import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tower_companion_android/models/Weapon.dart';
import 'package:tower_companion_android/models/artifact.dart';
import 'package:tower_companion_android/models/combat.dart';
import 'package:tower_companion_android/models/explorer.dart';
import 'package:tower_companion_android/models/malfunction.dart';
import 'package:tower_companion_android/models/objectives.dart';
import 'package:tower_companion_android/models/parasite.dart';
import 'package:tower_companion_android/models/skill.dart';
import 'package:tower_companion_android/models/stats.dart';
import 'package:tower_companion_android/models/tower_run.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbName = "tower_run.db";
  static const altFireTable = """
      CREATE TABLE Altfire 
      (
          id INT PRIMARY KEY,
          name TEXT,
          level INT NOT NULL,
          altFireDescription TEXT
      );
""";

  static const traitTable = """  CREATE TABLE Trait 
      (
          id INT PRIMARY,
          name TEXT,
          traitDescription TEXT,
          level INT NOT NULL
      );
      """;

  static const weaponTable = """ 
      CREATE TABLE Weapon (
        id INT PRIMARY KEY,
        name TEXT NOT NULL,
        altFireId INT,
        traitsId INT,
        level INT,

        FOREIGNKEY (altfireId),
        FOREIGNKEY (traitsId),
      );
      """;

  static const artifactTable = """ 
            CREATE TABLE Artifact (
        id INT PRIMARY KEY,
        name TEXT NOT NULL,
        artifactDescription TEXT NOT NULL
      );
      """;

  static const statTable = """ 
           CREATE TABLE Stat (
        weaponDamge DOUBLE NOT NULL,
        protection DOUBLE NOT NULL,
        proficiencyRate DOUBLE NOT NULL,
        repairEfficiency DOUBLE NOT NULL,
        altFireCooldown DOUBLE NOT NULL
      );
      """;

  static const parasiteTable = """
        CREATE TABLE Parasite (
        name TEXT NOT NULL,
        positiveDescription TEXT NOT NULL,
        negativeDescription TEXT NOT NULL
      );
 """;

  static const combatTable = """ 
        CREATE TABLE Combat (
        weakPointKills INT NOT NULL,
        meleeKills INT NOT NULL,
        hostilesEliminated INT NOT NULL,
        malformedHostilesEliminated INT NOT NULL
      );
 """;

  static const explorerTable = """ 
          CREATE TABLE Explorer (
        floorsCleared INT NOT NULL,
        silphiumFound INT NOT NULL,
        obolitesCollected INT NOT NULL,
        calibratorsCollected INT NOT NULL
      );
 """;

  static const skillTable = """ 
         CREATE TABLE Skill (
        perfectFloors INT NOT NULL,
        consecutivePerfectFloors INT NOT NULL,
        peakAdrenaline DOUBLE NOT NULL,
        midairMelee INT NOT NULL
      );
 """;

  static const objectivesTable = """ 
          CREATE TABLE Objectives (
        pyliodEliminated INT NOT NULL,
        algosDefeated INT NOT NULL,
        algosFinalFormDefeated INT NOT NULL,
        algosInfinityFormDefeated INT NOT NULL
      );
 """;

  static const towerRunTable = """
        CREATE TABLE TowerRun (
      id INT PRIMARY KEY AUTO_INCREMENT, -- Assuming an auto-incrementing primary key
      scoutName TEXT NOT NULL,
      weaponId INT,
      score INT NOT NULL,
      finalMultiplier DOUBLE NOT NULL,
      averageMultiplier DOUBLE NOT NULL,
      highestMultiplier DOUBLE NOT NULL,
      phase INT NOT NULL,
      room INT NOT NULL,
      platform TEXT NOT NULL,
      dateStarted DATETIME NOT NULL,
    -- Add columns for other related entities (if they have unique identifiers)
    -- For example, assuming 'Artifact', 'Parasite', 'Stats', 'Malfunction', 'Combat', 'Explorer', 'Skill', 'Objectives' have their own tables with 'id' as their primary key
      artifactId INT,
      parasiteId INT,
      statsId INT,
      malfunctionId INT,
      combatId INT,
      explorerId INT,
      skillId INT,
      objectivesId INT,
      FOREIGN KEY (weaponId) REFERENCES Weapon(id),
      FOREIGN KEY (artifactId) REFERENCES Artifact(id),
      FOREIGN KEY (parasiteId) REFERENCES Parasite(id),
      FOREIGN KEY (statsId) REFERENCES Stats(id),
      FOREIGN KEY (malfunctionId) REFERENCES Malfunction(id),
      FOREIGN KEY (combatId) REFERENCES Combat(id),
      FOREIGN KEY (explorerId) REFERENCES Explorer(id),
      FOREIGN KEY (skillId) REFERENCES Skill(id),
      FOREIGN KEY (objectivesId) REFERENCES Objectives(id)
);
        """;

  static Future<Database> _getDB() async {
    WidgetsFlutterBinding.ensureInitialized();

    return await openDatabase(join(await getDatabasesPath(), _dbName),
        onCreate: (db, version) async {
      await db.execute(altFireTable);
      await db.execute(traitTable);
      await db.execute(weaponTable);
      await db.execute(artifactTable);
      await db.execute(statTable);
      await db.execute(parasiteTable);
      await db.execute(combatTable);
      await db.execute(explorerTable);
      await db.execute(skillTable);
      await db.execute(objectivesTable);
      await db.execute(towerRunTable);
    }, version: _version);
  }

  Future<void> insertTowerRun(TowerRun run) async {
    final db = await _getDB();

    await db.insert(_dbName, run.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore);
  }

  Future<List<TowerRun>> runs() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query(_dbName);

    return List.generate(maps.length, (i) {
      return TowerRun(
          id: maps[i]['id'] as int,
          scoutName: maps[i]['scoutName'] as String,
          weapon: maps[i]['weapon'] as Weapon,
          artifacts: maps[i]['artifacts'] as List<Artifact>,
          parasites: maps[i]['parasites'] as List<Parasite>,
          stats: maps[i]['stats'] as Stats,
          malfunctions: maps[i]['malfunctions'] as List<Malfunction>,
          score: maps[i]['score'] as int,
          finalMultiplier: maps[i]['finalMutliplier'] as double,
          averageMultiplier: maps[i]['averageMultiplier'] as double,
          highestMultiplier: maps[i]['highestMultiplier'] as double,
          phase: maps[i]['phase'] as int,
          room: maps[i]['room'] as int,
          platform: maps[i]['platform'] as String,
          combat: maps[i]['combat'] as Combat,
          explorer: maps[i]['explorer'] as Explorer,
          skill: maps[i]['skill'] as Skill,
          objectives: maps[i]['objectives'] as Objectives,
          dateStarted: maps[i]['dateStarted'] as DateTime,
          dateCompleted: maps[i]['dateCompleted'] as DateTime);
    });
  }

  Future<void> updateRun(TowerRun run) async {
    final db = await _getDB();

    await db.update(_dbName, run.toMap(), where: 'id = ?', whereArgs: [run.id]);
  }

  Future<void> deleteRun(int id) async {
    final db = await _getDB();

    await db.delete(_dbName, where: 'id = ?', whereArgs: [id]);
  }
}
