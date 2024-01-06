import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tower_companion_android/runs.dart';
import 'package:tower_companion_android/services/database_helper.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:flutter/widgets.dart';

void main() async {
  const int _version = 1;
  const String _dbName = "tower_run.db";

  WidgetsFlutterBinding.ensureInitialized();

  openDatabase(join(await getDatabasesPath(), _dbName),
      onCreate: ((db, version) async => await db.execute("""
      CREATE TABLE Altfire(
          id INT PRIMARY KEY AUTO_INCREMENT,
          name TEXT,
          level INT NOT NULL,
          altFireDescription TEXT
      );

      CREATE TABLE Trait (
          id INT PRIMARY KEY AUTO_INCREMENT,
          name TEXT,
          traitDescription TEXT,
          level INT NOT NULL
      );

      CREATE TABLE Weapon (
        id INT PRIMARY KEY AUTO_INCREMENT,
        name TEXT NOT NULL,
        altFireId INT,
        traitsId INT,
        level INT,

        FOREIGNKEY (altfireId),
        FOREIGNKEY (traitsId),
      );

      CREATE TABLE Artifact (
        id INT PRIMARY KEY AUTO_INCREMENT,
        name TEXT NOT NULL,
        artifactDescription TEXT NOT NULL
      );

      CREATE TABLE Stat (
        weaponDamge DOUBLE NOT NULL,
        protection DOUBLE NOT NULL,
        proficiencyRate DOUBLE NOT NULL,
        repairEfficiency DOUBLE NOT NULL,
        altFireCooldown DOUBLE NOT NULL
      );

      CREATE TABLE Parasite (
        name TEXT NOT NULL,
        positiveDescription TEXT NOT NULL,
        negativeDescription TEXT NOT NULL
      );

      CREATE TABLE Combat (
        weakPointKills INT NOT NULL,
        meleeKills INT NOT NULL,
        hostilesEliminated INT NOT NULL,
        malformedHostilesEliminated INT NOT NULL
      );

      CREATE TABLE Explorer (
        floorsCleared INT NOT NULL,
        silphiumFound INT NOT NULL,
        obolitesCollected INT NOT NULL,
        calibratorsCollected INT NOT NULL
      );

      CREATE TABLE Skill (
        perfectFloors INT NOT NULL,
        consecutivePerfectFloors INT NOT NULL,
        peakAdrenaline DOUBLE NOT NULL,
        midairMelee INT NOT NULL
      );

      CREATE TABLE Objectives (
        pyliodEliminated INT NOT NULL,
        algosDefeated INT NOT NULL,
        algosFinalFormDefeated INT NOT NULL,
        algosInfinityFormDefeated INT NOT NULL
      );

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
        """)), version: _version);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Runs().loadDb();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Runs(),
    );
  }
}
