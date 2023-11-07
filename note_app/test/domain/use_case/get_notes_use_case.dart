import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/get_notes_use_case.dart';
import 'package:note_app/domain/util/note_order.dart';
import 'package:note_app/domain/util/order_type.dart';

import 'get_notes_use_case.mocks.dart';

// abcd
//이 어노테이션은 리스트 안에 가짜데이터 객체를 만들면 Mock접두어가 붙은 가짜 데이터를 생성해줌 build runner 필요
@GenerateMocks([NoteRepository])
void main() {
  test('정렬 기능 확인', () async {
    //추상클래스의 가짜 데이터를 만들어 기능이 구현돼있지 않음
    final repository = MockNoteRepository();
    final getNotes = GetNotesUseCase(repository);

    //mockito 지원 when 사용
    //인터페이스 중 테스트 할 기능을 when에서 처리해준다
    //동작 정의 (Fake Data 마련)
    when(repository.getNotes()).thenAnswer((_) async => [
          Note(title: 'title', content: 'content', timestamp: 0, color: 1),
          Note(title: 'title2', content: 'content2', timestamp: 2, color: 2),
        ]);

    List<Note> result =
        await getNotes.call(NoteOrder.date(OrderType.descending()));
    //타입 검사
    expect(result, isA<List<Note>>());
    expect(result.first.timestamp, 2);

    result = await getNotes.call(NoteOrder.date(OrderType.ascending()));
    expect(result.first.timestamp, 0);
    //verify 내부 메서드가 수행이 됐는지 확인하는 메서드
    verify(repository.getNotes());

  });
}
