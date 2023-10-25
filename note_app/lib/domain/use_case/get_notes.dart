import 'package:note_app/domain/repository/note_repository.dart';

import '../model/note.dart';

class GetNotes{
  //repository 는 crud 기능이 구현돼 있는 상태로 생성자를 받음
  final NoteRepository repository;

  GetNotes(this.repository);

  Future<List<Note>> call()async{
    List<Note> notes = await repository.getNotes();
  return notes;
  }
}