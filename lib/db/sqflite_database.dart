import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDatabase {
  SqfliteDatabase._();

  static Future<Database> get database async {
    return openDatabase(
      join(await getDatabasesPath(), 'practical.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE dummy(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
        );
      },
      version: 1,
    );
  }
}
