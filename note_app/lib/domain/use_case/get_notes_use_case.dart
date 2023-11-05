import 'package:note_app/domain/repository/note_repository.dart';

import '../model/note.dart';

class GetNotesUseCase{
  //repository 는 crud 기능이 구현돼 있는 상태로 생성자를 받음
  final NoteRepository repository;

  GetNotesUseCase(this.repository);

  Future<List<Note>> call()async{
    List<Note> notes = await repository.getNotes();
    //리스트 정력방법: sort(리턴값이 -면 내림차순)
    notes.sort((a,b)=>-a.timestamp.compareTo(b.timestamp));
  return notes;
  }
}