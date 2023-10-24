import 'package:flutter_test/flutter_test.dart';
import 'package:note_app/data/data_source/note_db_helper.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  test('dbTest', () async {
    final db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);

    await db.execute(
        'CREATE TABLE note (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, color INTEGER, timestamp INTEGER)');

    final noteDbHelper = NoteDbHelper(db);

    await noteDbHelper.insertNote(const Note(
      title: 'test',
      content: 'test',
      color: 1,
      timestamp: 1,
    ));
    
    expect((await noteDbHelper.getNotes()).length, 1);


    Note note= (await noteDbHelper.getNoteById(1))!;
    expect(note.id, 1);

    //db의 테이블을 변경하기만 함, 가져온 건 아님
    await noteDbHelper.updateNote(note.copyWith(title: 'change'));
    // db의 변경된 테이블을 가져와서 테스트 진행
    note= (await noteDbHelper.getNoteById(1))!;
    expect(note.title, 'change');

    await noteDbHelper.deleteNote(note);

    expect((await noteDbHelper.getNotes()).length, 0);
    db.close();
  });
}
