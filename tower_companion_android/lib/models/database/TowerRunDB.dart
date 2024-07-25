import 'package:sqflite/sqflite.dart';
import 'package:tower_companion_android/models/artifact.dart';
import 'package:tower_companion_android/models/malfunction.dart';
import 'package:tower_companion_android/models/parasite.dart';
import 'package:tower_companion_android/models/stats.dart';
import 'package:tower_companion_android/models/weapon.dart';
import 'database_service.dart';
import 'package:tower_companion_android/models/tower_run.dart';
import 'package:path/path.dart';

class TowerRunDB {
  final tableName = 'TowerRun';

  Future<void> createTable(Database database) async {
    await database.execute("""
-- Create the AltFire table
CREATE TABLE AltFire (
    id INTEGER PRIMARY KEY,
    name TEXT,
    level INTEGER,
    description TEXT
);

-- Create the Trait table
CREATE TABLE Trait (
    id INTEGER PRIMARY KEY,
    name TEXT,
    description TEXT,
    level INTEGER
);

-- Create the Weapon table
CREATE TABLE Weapon (
    id INTEGER PRIMARY KEY,
    name TEXT,
    altFire_id INTEGER,
    FOREIGN KEY (altFire_id) REFERENCES AltFire(id)
);

-- Create the Malfunction table
CREATE TABLE Malfunction (
    id INTEGER PRIMARY KEY,
    description TEXT,
    conditionToRemove TEXT,
    type TEXT
);

-- Create the Parasite table
CREATE TABLE Parasite (
    id INTEGER PRIMARY KEY,
    name TEXT,
    positiveDescription TEXT,
    negativeDescription TEXT
);

-- Create the Artifact table
CREATE TABLE Artifact (
    id INTEGER PRIMARY KEY,
    name TEXT,
    description TEXT
);

CREATE TABLE Combat (
  id INTEGER PRIMARY KEY,
  weakPointKills INTEGER,
  meleeKills INTEGER,
  hostilesEliminated INTEGER,
  malformedHostilesEliminated INTEGER
);

CREATE TABLE Explorer (
  id INTEGER PRIMARY KEY,
  floorsCleared INTEGER,
  silphiumFound INTEGER,
  obolitesCollected INTEGER,
  calibratorsCollected INTEGER
);

CREATE TABLE Objectives (
  id INTEGER PRIMARY KEY,
  pylioidsEliminated INTEGER,
  algosDefeated INTEGER,
  algosFinalFormedDefeated INTEGER,
  algosInfinityFormDefeated INTEGER
);

CREATE TABLE Skill (
  id INTEGER PRIMARY KEY,
  perfectFloors INTEGER,
  consecutivePerfectFloors INTEGER,
  peakAdrenaline REAL,
  midAirMelee INT
);

-- Create the TowerRun table
CREATE TABLE TowerRun (
    id INTEGER PRIMARY KEY,
    scoutName TEXT,
    score INTEGER,
    finalMultiplier REAL,
    averageMultiplier REAL,
    highestMultiplier REAL,
    phase INTEGER,
    room INTEGER,
    platform TEXT,
    dateStarted DATETIME,
    dateCompleted DATETIME,
    weapon_id INTEGER, -- Foreign key reference to Weapon table
    weapon_traits TEXT, -- Comma-separated list of traits associated with the weapon
    objectives_id INTEGER, -- Foreign key reference to Objectives table
    explorer_id INTEGER, -- Foreign key reference to Explorer table
    combat_id INTEGER, -- Foreign key reference to Combat table
    skill_id INTEGER, -- Foreign key reference to Skill table
    FOREIGN KEY (weapon_id) REFERENCES Weapon(id),
    FOREIGN KEY (objectives_id) REFERENCES Objectives(id),
    FOREIGN KEY (explorer_id) REFERENCES Explorer(id),
    FOREIGN KEY (combat_id) REFERENCES Combat(id),
    FOREIGN KEY (skill_id) REFERENCES Skill(id)
);


-- Create the MalfunctionTowerRun table (junction table)
CREATE TABLE MalfunctionTowerRun (
    malfunction_id INTEGER,
    towerRun_id INTEGER,
    PRIMARY KEY (malfunction_id, towerRun_id),
    FOREIGN KEY (malfunction_id) REFERENCES Malfunction(id),
    FOREIGN KEY (towerRun_id) REFERENCES TowerRun(id)
);

-- Create the ParasiteTowerRun table (junction table)
CREATE TABLE ParasiteTowerRun (
    parasite_id INTEGER,
    towerRun_id INTEGER,
    PRIMARY KEY (parasite_id, towerRun_id),
    FOREIGN KEY (parasite_id) REFERENCES Parasite(id),
    FOREIGN KEY (towerRun_id) REFERENCES TowerRun(id)
);

-- Create the ArtifactTowerRun table (junction table)
CREATE TABLE ArtifactTowerRun (
    artifact_id INTEGER,
    towerRun_id INTEGER,
    PRIMARY KEY (artifact_id, towerRun_id),
    FOREIGN KEY (artifact_id) REFERENCES Artifact(id),
    FOREIGN KEY (towerRun_id) REFERENCES TowerRun(id)
);

 """);
  }

  Future<int> create({required TowerRun towerRun}) async {
    final database = await DatabaseService().database;
    return 0;
  }
}
