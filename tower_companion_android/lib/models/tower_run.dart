import 'Weapon.dart';
import 'artifact.dart';
import 'parasite.dart';
import 'stats.dart';
import 'malfunction.dart';
import 'combat.dart';
import 'skill.dart';
import 'explorer.dart';
import 'objectives.dart';

class TowerRun {
  String scoutName;
  Weapon weapon;
  List<Artifact>? artifacts;
  List<Parasite>? parasites;
  Stats stats;
  List<Malfunction>? malfunctions;
  int score;
  double finalMultiplier;
  double averageMultiplier;
  double highestMultiplier;
  int phase;
  int room;
  String platform;
  Combat? combat;
  Explorer? explorer;
  Skill? skill;
  Objectives? objectives;
  DateTime dateStarted;
  DateTime dateCompleted;

  TowerRun(
      {required this.scoutName,
      required this.weapon,
      this.artifacts,
      this.parasites,
      required this.stats,
      this.malfunctions,
      required this.score,
      required this.finalMultiplier,
      required this.averageMultiplier,
      required this.highestMultiplier,
      required this.phase,
      required this.room,
      required this.platform,
      this.combat,
      this.explorer,
      this.skill,
      this.objectives,
      required this.dateStarted,
      required this.dateCompleted});
}
