import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_event.dart';

class AddEditNoteViewModel with ChangeNotifier {
  NoteRepository repository;

  AddEditNoteViewModel(this.repository);

  int _color = Colors.orange.value;

  int get color => _color;

  void onEvent(AddEditNoteEvent event) {
    event.when(
      changeColor: _changeColor,
      saveNote: _saveNote,
    );
  }

  Future<void> _changeColor(int color) async {
    _color = color;
    notifyListeners();
  }

  Future<void> _saveNote(int? id, String title, String content) async {
    //새로운 메모를 저장하는 경우
    if (id == null) {
      await repository.insertNote(
        Note(
            title: title,
            content: content,
            color: color,
            timestamp: DateTime.now().millisecondsSinceEpoch),
      );
    } else {
      repository.updateNote(
        Note(
            id: id,
            title: title,
            content: content,
            color: color,
            timestamp: DateTime.now().millisecondsSinceEpoch),
      );
    }
  }
}
