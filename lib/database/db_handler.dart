import 'dart:async';
import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';


class DBHelper {
  static final DBHelper _instance = new DBHelper.internal();
  DBHelper.internal();
  factory DBHelper() => _instance;

   Database? _db;

  Future<Database?> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  Future<Database> initDb() async {
    io.Directory documentsDirectory =
        await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "main.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE mytable(id INTEGER PRIMARY KEY, name TEXT, value INTEGER)");

         await db.execute(
          "CREATE TABLE mytable2(id INTEGER PRIMARY KEY, name TEXT, value INTEGER)");
  }


  
}
