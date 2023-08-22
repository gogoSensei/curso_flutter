import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:sqflite/sqflite.dart';

export 'package:qr_reader/models/scan_model.dart';


class DBProvider {
  static Database? _database;
  static final DBProvider db = DBProvider._();
  DBProvider._();
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    // path donde se almacena la base de datos
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = [documentsDirectory.path, 'scansDB.db'].join();
    // Crear base de datos
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) => null,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE Scans (
            id INTEGER PRIMARY KEY,
            tipo  TEXT, 
            valor TEXT
          )
        ''');
      },
    );
  }

  Future<int> nuevoScanRaw(ScanModel nuevoScan) async {
    final tipo = nuevoScan.tipo;
    final valor = nuevoScan.valor;

    final db = await database;
    final res = await db.rawInsert('''
      INSERT INTO Scans (tipo, valor)
       VALUES ($tipo, $valor)
    ''');

    return res;
  }

  Future<int> nuevoScan(ScanModel nuevoScan) async {
    final db = await database;
    final res = await db.insert('Scans', nuevoScan.toJson());
    return res;
  }

  Future<ScanModel?> getScanById (int i) async {
    final db = await database;
    final res = await db.query('Scans', where: 'id = ?', whereArgs: [i]);

    return res.isNotEmpty
          ? ScanModel.fromJson(res.first)
          : null; 
  }

  Future<List<ScanModel>?> getTodosScans (String? tipo) async {
    final db = await database;
    final List<Map<String, Object?>> res;

    res = await db.rawQuery('''
      SELECT * FROM Scans ${tipo == null ? '' : ' WHERE tipo = \'$tipo\'' } 
    ''');
    
    return res.isNotEmpty
          ? res.map((e) => ScanModel.fromJson(e)).toList()
          : [];
  }

  Future<int> updateScan(ScanModel nuevoScan) async {
    final db = await database;
    final res = await db.update('Scans', nuevoScan.toJson(), where: 'id = ?', whereArgs: [nuevoScan.id]);
    return res;
  }

  Future<int> deleteScan (int id) async {
    final db = await database;
    final res = await db.delete('Scans', where: 'id = ?', whereArgs: [id]);
    return res;
  }

  Future<int> deleteAllScan () async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM Scans');
    return res;
  }
}
