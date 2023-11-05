import 'package:flutter/material.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:note_app/presentation/notes/components/note_item.dart';
import 'package:note_app/presentation/notes/notes_event.dart';
import 'package:note_app/presentation/notes/notes_view_model.dart';
import 'package:note_app/ui/colors.dart';
import 'package:provider/provider.dart';

import '../../domain/model/note.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotesViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Your note',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sort),
          )
        ],
      ),
      body: ListView(
        //ListView는 리스트를 받아야 해서 toList()
        children: state.notes
            .map(
              (note) => GestureDetector(
                onTap: () async {
                  bool? isSaved = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddEditNoteScreen(
                        note: note,
                      ),
                    ),
                  );
                  if(isSaved!){
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //navpush= Future를 리턴함
          //navpush를 하면 어떤 불리언 값을 리턴받는가? 받는 이유는 무엇인가? 푸시를 한 후 다음 화면에서 pop을 하면서 값을 줄 수 있다.
          bool? isSaved = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddEditNoteScreen(),
            ),
          );
          //전환된 화면에서 pop을 하고 돌아온 순간 아래를 진행하는가? 맞다
          //push를 하자마자 트루를 리턴하는가? 아니다 다음 화면에서 navpop할때  context와 true를 리턴받아 리로드 한다 받을때
          //버튼을 누르자 마자 loadnotes를 하면 새로 추가될 내용은 어찌 불러서 리로드 하는가?
          //true 가 되는 이유는 다음 페이지에서 pop할때 true를 리턴해주기 떄문인가? 그렇다고 한다
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
