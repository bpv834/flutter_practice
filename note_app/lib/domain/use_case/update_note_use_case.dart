import 'package:injectable/injectable.dart';
import 'package:note_app/domain/repository/note_repository.dart';

import '../model/note.dart';
@singleton
class UpdateNoteUseCase{
  final NoteRepository repository;

  UpdateNoteUseCase(this.repository);

  Future<void> call(Note note) async{
    await repository.updateNote(note);
  }
}