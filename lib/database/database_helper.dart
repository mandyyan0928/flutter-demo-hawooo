import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DatabaseHelper{
  static final _databaseName="HawoooDemo.db";
  static final _databaseVersion=1;
  static final table='member';
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance= DatabaseHelper._privateConstructor();
  static Database _database;

  Future<Database> get database async {
    if(_database!=null) return _database;

    _database= await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, _databaseName);
    return await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  FutureOr<void> _onCreate(Database db, int version) async {
    await db.execute('''
  CREATE TABLE $table(
  id INTEGER PRIMARY KEY, 
  username TEXT NOT NULL,
  mobile INT  NOT NULL,
  password TEXT NOT NULL ,
  )
  ''');
  }
  Future<int> insert(Map<String, dynamic> row) async
  {
    Database db = await instance.database;
    return await db.insert(table,row);
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }
  Future <Map<String, dynamic>>  query(List<String> columns,
      String where,List<dynamic> whereArgs ) async {
    Database db = await instance.database;
    List<Map> result = await db.query(table,
        columns: columns,
        where: '$where = ?',
        whereArgs: whereArgs);

    if (result.length > 0) {
      return result.first;
    }

    return null;
  }


  Future<int> queryRowCount() async {
    Database db = await instance.database;
    return Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT(*) FROM $table'));
  }

  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row['id'];
    return await db.update(table, row, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(table, where: 'id = ?', whereArgs: [id]);
  }



}