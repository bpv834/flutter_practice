/*
import 'package:note_app/data/data_source/note_db_helper.dart';
import 'package:note_app/data/repository/note_repository_impl.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/add_note_use_case.dart';
import 'package:note_app/domain/use_case/delete_note_use_case.dart';
import 'package:note_app/domain/use_case/get_note_use_case.dart';
import 'package:note_app/domain/use_case/get_notes_use_case.dart';
import 'package:note_app/domain/use_case/update_note_use_case.dart';
import 'package:note_app/domain/use_case/use_cases.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:note_app/presentation/notes/notes_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sqflite/sqflite.dart';

Future<List<SingleChildWidget>> getProviders() async {
  //내가 만든 클래스가아니라면, 의존성 주입시에 module을 사용해야 함 (써드파티 객체를 사용)
  Database database = await openDatabase(
    'notes_db',
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE note (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, color INTEGER, timestamp INTEGER)');
    },
  );
  NoteDbHelper noteDbHelper = NoteDbHelper(database);
  NoteRepositoryImpl repository = NoteRepositoryImpl(noteDbHelper);
  UseCases useCases = UseCases(
    addNoteUseCase: AddNoteUseCase(repository),
    deleteNoteUseCase: DeleteNoteUseCase(repository),
    getNotesUseCase: GetNotesUseCase(repository),
    getNoteUseCase: GetNoteUseCase(repository),
    updateNoteUseCase: UpdateNoteUseCase(repository),
  );
  NotesViewModel notesViewModel = NotesViewModel(useCases);

  return [
    ChangeNotifierProvider(create: (_) => notesViewModel),
    Provider(create: (_)=> repository)
  ];
}
*/
