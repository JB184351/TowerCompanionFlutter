import 'weapon.dart';
import 'artifact.dart';
import 'parasite.dart';
import 'stats.dart';
import 'malfunction.dart';
import 'combat.dart';
import 'skill.dart';
import 'explorer.dart';
import 'objectives.dart';
import 'package:isar/isar.dart';

part 'tower_run.g.dart';

@collection
class TowerRun {
  Id id = Isar.autoIncrement;
  String scoutName = "";
  Weapon weapon = Weapon();
  List<Artifact>? artifacts;
  List<Parasite>? parasites;
  Stats stats = Stats();
  List<Malfunction>? malfunctions;
  int score = 0;
  double finalMultiplier = 0.0;
  double averageMultiplier = 0.0;
  double highestMultiplier = 0.0;
  int phase = 0;
  int room = 0;
  String platform = "";
  Combat? combat;
  Explorer? explorer;
  Skill? skill;
  Objectives? objectives;
  DateTime dateStarted = DateTime.now();
  DateTime dateCompleted = DateTime.now();
}
