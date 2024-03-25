import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import '../../domain/model/note.dart';
@singleton
class NoteDbHelper {
  Database db;
//테이블을 받아와 헬퍼에 넣음
  NoteDbHelper(this.db);

  Future<Note?> getNoteById(int id) async {
    // Select * from note Where id =1
    final List<Map<String, dynamic>> maps = await db.query(
      'note',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return Note.fromJson(maps.first);
    }
    return null;
  }

  Future<List<Note>> getNotes() async {
    final maps = await db.query('note');
    return maps.map((e) => Note.fromJson(e)).toList();
  }

  Future<void> insertNote(Note note) async {
    await db.insert('note', note.toJson());
  }

  Future<void> updateNote(Note note) async {
    await db.update(
      'note',
      note.toJson(),
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }

  Future<void> deleteNote(Note note) async {
    await db.delete(
      'note',
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }
}
