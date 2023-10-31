import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_ui_event.dart';
import 'package:note_app/ui/colors.dart';

class AddEditNoteViewModel with ChangeNotifier {
  NoteRepository repository;

  int _color = roseBud.value;

  int get color => _color;

  //한번 리슨을 하면 다시 재리슨이 불가능하기 때문에 .broadcast생성자를 사용하면 여러번 리슨 할 수 있는 형태가 됨
  final _eventController =StreamController<AddEditNoteUiEvent>.broadcast();

  Stream<AddEditNoteUiEvent>get eventStream => _eventController.stream;

  AddEditNoteViewModel(this.repository);

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
    _eventController.add(AddEditNoteUiEvent.saveNote());
  }
}
