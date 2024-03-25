import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/data/repository/note_repository_impl.dart';
import 'package:note_app/domain/use_case/add_note_use_case.dart';
import 'package:note_app/domain/use_case/delete_note_use_case.dart';
import 'package:note_app/domain/use_case/get_note_use_case.dart';
import 'package:note_app/domain/use_case/get_notes_use_case.dart';
import 'package:note_app/domain/use_case/update_note_use_case.dart';
import 'package:note_app/domain/use_case/use_cases.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:note_app/presentation/notes/components/note_item.dart';
import 'package:note_app/presentation/notes/components/order_section.dart';
import 'package:note_app/presentation/notes/notes_event.dart';
import 'package:note_app/presentation/notes/notes_view_model.dart';
import 'package:note_app/ui/colors.dart';
import 'package:provider/provider.dart';

import '../../domain/model/note.dart';
import '../../domain/util/note_order.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotesViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          viewModel.titleRepository.getTitle(),
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              viewModel.onEvent(NotesEvent.toggleOrderSection());
            },
            icon: Icon(Icons.sort),
          )
        ],
      ),
      body: ListView(
          //ListView는 리스트를 받아야 해서 toList()
          children: [
            state.isOrderSectionVisible
                ? OrderSection(
                    //현재 노트오더 상태를 넣어줌
                    noteOrder: state.noteOrder,
                    onOrderChanged: (NoteOrder noteOrder) {
                      //이벤트가 NotesEvent.changeOrder일 경우 매게변수를 이용해 veiwModel.state를 인자값으로 변환해줌
                      viewModel.onEvent(NotesEvent.changeOrder(noteOrder));
                    },
                  )
                : Container(),
            ...state.notes
                .map(
                  (note) => GestureDetector(
                    onTap: () async {
                      //note를 jsonEncode해서 queryParm에 넣고, uri객체를 푸시에 넘겨줌
                      // queryParameters 는 map형태로 보내야 함
                      final uri = Uri(path: '/edit_note',queryParameters: {'note': jsonEncode(note.toJson())});
                      bool? isSaved = await context.push(uri.toString());
                      if (isSaved!) {
                        viewModel.onEvent(NotesEvent.loadNotes());
                      }
                    },
                    child: NoteItem(
                        note: note,
                        onDeleteTap: () {
                          viewModel.onEvent(NotesEvent.deleteNote(note));

                          final snackBar = SnackBar(
                            content: Text('노트가 삭제 됐습니다.'),
                            action: SnackBarAction(
                                label: '취소',
                                onPressed: () {
                                  viewModel.onEvent(NotesEvent.restoreNote());
                                }),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }),
                  ),
                )
                .toList(),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //navpush= Future를 리턴함
          //navpush를 하면 어떤 불리언 값을 리턴받는가? 받는 이유는 무엇인가? 푸시를 한 후 다음 화면에서 pop을 하면서 값을 줄 수 있다.
          bool? isSaved = await context.push('/add_note');
          //전환된 화면에서 pop을 하고 돌아온 순간 아래를 진행하는가? 맞다
          //push를 하자마자 트루를 리턴하는가? 아니다 다음 화면에서 navpop할때  context와 true를 리턴받아 리로드 한다 받을때

          if (isSaved != null && isSaved) {
            viewModel.onEvent(NotesEvent.loadNotes());
          }
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
