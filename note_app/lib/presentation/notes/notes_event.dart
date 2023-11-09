import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note_app/domain/util/note_order.dart';

import '../../domain/model/note.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'notes_event.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
@freezed
//seald 클래스의 장점 enum 클래스를 사용해도 여러가지 기능들을 선언해서 사용할 수 있지만, seald 클래스는 데이터를 받을 수 있음
sealed class NotesEvent with _$NotesEvent {
  //const factory NotesEvent.loadNotes(생성자 이름) = LoadNotes(타입 :(클래스 이름))
  const factory NotesEvent.loadNotes() = LoadNotes;
  const factory NotesEvent.deleteNote(Note note) = DeleteNote;
  const factory NotesEvent.restoreNote() = RestoreNote;
  const factory NotesEvent.changeOrder(NoteOrder noteOrder) = ChangeOrder;
}