import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model/note.dart';
import 'dart:io' as io;

class DbHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDatabase();
    return _db;
  }

  // setup database
  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'notes.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  //  create a table
  _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE notes (id INTEGER, title TEXT NOT NULL, description TEXT NOT NULL, email TEXT)',
    );
  }

  // insert
  Future<NotesModel> insert(NotesModel notesModel) async {
    var dbClient = await db;
    dbClient!.insert('notes', notesModel.toMap());
    return notesModel;
  }

  // select
  Future<List<NotesModel>> getNotes() async {
    var dbClient = await db;

    final List<Map<String, Object?>> queryResult =
        await dbClient!.query('notes');
    return queryResult.map((e) => NotesModel.fromMap(e)).toList();
  }

  // delete
  Future deleteNotes() async {
    var dbClient = await db;
    return await dbClient!.delete('notes');
  }

  // update
  Future<int> updateNote(NotesModel notesModel) async {
    var dbClient = await db;
    return await dbClient!.update('notes', notesModel.toMap(),
        where: 'id=?', whereArgs: [notesModel.id]);
  }
}
