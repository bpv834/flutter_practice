import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/use_cases.dart';
import 'package:note_app/presentation/notes/notes_event.dart';
import 'package:note_app/presentation/notes/notes_state.dart';

import '../../domain/model/note.dart';

class NotesViewModel with ChangeNotifier {
  final UseCases useCases;
  //NotesState 클래스에서 Default값으로 [] 을 넣어놨기에 값입력 없이 생성 가능
  NotesState _state = NotesState();
  NotesState get state => _state;

  Note? _recentlyDeletedNote;

  NotesViewModel(this.useCases){
    _loadNotes();
  }
  void onEvent(NotesEvent event) {
    event.when(
      loadNotes: _loadNotes,
      deleteNote: _deleteNote,
      restoreNote: _restoreNote,
    );
  }

  Future<void> _loadNotes() async {
    //call 메서드는 클래스 이름으로 호출 가능 useCases.getNotesUseCase().call생략
    List<Note> notes = await useCases.getNotesUseCase();
    _state = state.copyWith(
      notes: notes,
    );
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    _recentlyDeletedNote = note;
    //call 메서드는 클래스 이름으로 호출 가능
    await useCases.deleteNoteUseCase(note);
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeletedNote != null) {
      //call 메서드는 클래스 이름으로 호출 가능
      await useCases.addNoteUseCase(_recentlyDeletedNote!);
      _recentlyDeletedNote=null;
      _loadNotes();
    }
  }
}
