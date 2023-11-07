import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/util/note_order.dart';

import '../model/note.dart';

class GetNotesUseCase {
  //repository 는 crud 기능이 구현돼 있는 상태로 생성자를 받음
  final NoteRepository repository;

  GetNotesUseCase(this.repository);

  Future<List<Note>> call(NoteOrder noteOrder) async {
    List<Note> notes = await repository.getNotes();
    //정렬방식 제목순이냐 날짜순이냐 색상순이냐 조절
    noteOrder.when(
      //제목순
      title: (orderType) {
        orderType.when(
          ascending: () {
            //제목순 오름차
            notes.sort((a, b) => a.title.compareTo(b.title));
          },
          descending: () {
            notes.sort((a, b) => -a.title.compareTo(b.title));
          },
        );
      },
      date: (orderType) {
        orderType.when(
          ascending: () {
            notes.sort((a, b) => a.timestamp.compareTo(b.timestamp));
          },
          descending: () {
            notes.sort((a, b) => -a.timestamp.compareTo(b.timestamp));
          },
        );
      },
      color: (orderType) {
        orderType.when(
          ascending: () {
            notes.sort((a, b) => a.color.compareTo(b.color));
          },
          descending: () {
            notes.sort((a, b) => -a.color.compareTo(b.color));
          },
        );
      },
    );

    //리스트 정력방법: sort(리턴값이 -면 내림차순)

    return notes;
  }
}
