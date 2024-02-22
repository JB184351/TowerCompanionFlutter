import 'package:sqflite/sqflite.dart';

enum MalfunctionType { normal, permanent }

class Malfunction {
  String malfunctionDescription;
  String? conditionToRemove;
  MalfunctionType malfunctionType;

  Malfunction(this.malfunctionDescription, this.conditionToRemove,
      this.malfunctionType);

  static List<String> getAllPermanentMalfunctions() {
    String obolitesDisappear = "Obolites disappear 1.5s faster.";
    String loseObolites = "Lose Obolites when suffering damage.";
    String midAir = "While in midair, Weapon Damage reduced by 50%.";
    String counterOnHit = "Hostiles counter on hit.";
    String meleeCooldown = "Melee cooldown increased by 2s.";
    String stationary = "While stationary, Weapon Damage reduced by 75%.";
    String reduceIntegrity = "Reduced Max Integrity.";
    String acid = "Hostiles leave pools of acid upon death.";
    String hostilesHeal = "Hostiles heal on attack.";
    String hostilesExplode = "Hostiles explode upon death.";
    String fabricationCost = "Fabrication costs increased by 50%.";

    List<String> permanentMalfunctions = [
      obolitesDisappear,
      loseObolites,
      midAir,
      counterOnHit,
      meleeCooldown,
      stationary,
      reduceIntegrity,
      acid,
      hostilesHeal,
      hostilesExplode,
      fabricationCost,
    ];

    return permanentMalfunctions;
  }

  Map<String, dynamic> toMap() => {
        'malfunctionDescription': malfunctionDescription,
        'conditionToRemove': conditionToRemove,
        'malfunctionType': malfunctionType,
      };
}

class MalfunctionTable {
  static const String tableName = "Malfunction";

  static const String columnId = 'id';
  static const String columnMalfunctionDescription = 'malfunction_description';
  static const String columnConditionToRemove = 'condition_to_remove';
  static const String columnMalfunctionType = 'malfunction_type';

  late Database _db;

  MalfunctionTable(Database db) {
    _db = db;
    _createTable();
  }

  void _createTable() async {
    await _db.execute('''
      CREATE TABLE IF NOT EXISTS $tableName (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnMalfunctionDescription TEXT,
        $columnConditionToRemove TEXT,
        $columnMalfunctionType TEXT
      )
    ''');

    Future<void> insertMalfunction(Malfunction malfunction) async {
      await _db.insert(
        tableName,
        {
          columnMalfunctionDescription: malfunction.malfunctionDescription,
          columnConditionToRemove: malfunction.conditionToRemove,
          columnMalfunctionType: malfunction.malfunctionType.toString(),
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
