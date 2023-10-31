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
        children: state.notes.map((note) => NoteItem(note: note)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //navpush= Future를 리턴함
          //navpush를 하면 어떤 불리언 값을 리턴받는가? 받는 이유는 무엇인가?
          bool? isSaved = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddEditNoteScreen(),
            ),
          );
          //push를 하자마자 트루를 리턴하는가?
          //버튼을 누르자 마자 loadnotes를 하면 새로 추가될 내용은 어찌 불러서 리로드 하는가?
          if(isSaved !=null && isSaved){
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
