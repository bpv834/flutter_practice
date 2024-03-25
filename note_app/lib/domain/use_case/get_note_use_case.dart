import 'package:injectable/injectable.dart';
import 'package:note_app/domain/repository/note_repository.dart';

import '../model/note.dart';
@singleton
class GetNoteUseCase {
  final NoteRepository repository;

  GetNoteUseCase(this.repository);

  Future<Note?> call(int id) async{
    return await repository.getNoteById(id);
  }
}
