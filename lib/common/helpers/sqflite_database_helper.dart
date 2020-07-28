import 'dart:async';

import 'package:optiven/projects/infrastructure/models/favourite_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseProvider {
  static const String TABLE_FAVOURITES = "favourites_table";
  static const String COLUMN_ID = "id";
  static const String COLUMN_TITLE = "title";
  static const String COLUMN_LOCATION = "location";
  static const String COLUMN_PRICE = "price";
  static const String COLUMN_FINANCING = "financing";
  static const String COLUMN_IMAGE = "image";

  DatabaseProvider._();
  static final DatabaseProvider db = DatabaseProvider._();

  Database _database;

  Future<Database> get database async {
    print("database getter called");

    if (_database != null) {
      return _database;
    }

    _database = await createDatabase();

    return _database;
  }

  Future<Database> createDatabase() async {
    String dbPath = await getDatabasesPath();

    return await openDatabase(
      join(dbPath, 'favouritesDB.db'),
      version: 1,
      onCreate: (Database database, int version) async {
        print("Creating favourites table");

        await database.execute(
            'CREATE TABLE $TABLE_FAVOURITES ($COLUMN_ID TEXT PRIMARY KEY,$COLUMN_TITLE TEXT,$COLUMN_LOCATION,'
            'TEXT,$COLUMN_PRICE TEXT,$COLUMN_FINANCING TEXT,$COLUMN_IMAGE TEXT)');
      },
    );
  }

  Future<List<ProjectFavourite>> getFavourites() async {
    final db = await database;

    var favourites = await db.query(TABLE_FAVOURITES, columns: [
      COLUMN_ID,
      COLUMN_TITLE,
      COLUMN_LOCATION,
      COLUMN_PRICE,
      COLUMN_FINANCING,
      COLUMN_IMAGE
    ]);

    List<ProjectFavourite> favouriteList = List<ProjectFavourite>();

    favourites.forEach((currentFav) {
      ProjectFavourite fav = ProjectFavourite.fromMap(currentFav);

      favouriteList.add(fav);
    });

    return favouriteList;
  }

  Future<ProjectFavourite> insert(ProjectFavourite favourite) async {
    final db = await database;
    int id;
    id = await db.insert(TABLE_FAVOURITES, favourite.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);

    favourite.id = id.toString();

    print('ID is ' + favourite.id.toString());
    return favourite;
  }

  Future<int> delete(String id) async {
    final db = await database;

    return await db.delete(
      TABLE_FAVOURITES,
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> update(ProjectFavourite favourite) async {
    final db = await database;

    return await db.update(
      TABLE_FAVOURITES,
      favourite.toMap(),
      where: "id = ?",
      whereArgs: [favourite.id],
    );
  }
}
