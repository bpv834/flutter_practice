import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@module
abstract class AppModule {
  //써드파티 의존성 주입용 객체 정의
  @preResolve
  Future<Database> get db =>
      openDatabase('notes_db', version: 1, onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE note (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT,'
                ' color INTEGER, timestamp INTEGER)');
      });
}
