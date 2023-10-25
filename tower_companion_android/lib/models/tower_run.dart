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
  String scoutName = "";
  Weapon weapon;
  List<Artifact>? artifacts;
  List<Parasite>? parasites;
  Stats stats;
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
  Objectives objectives;
  DateTime dateStarted;
  DateTime dateCompleted;

  TowerRun(this.scoutName, this.weapon, this.artifacts, this.parasites, this.stats, this.malfunctions, this.score, this.finalMultiplier, this.averageMultiplier, this.highestMultiplier, this.phase, this.room, this.platform, this.combat, this.explorer, this.skill, this.objectives, this.dateStarted, this.dateCompleted); 
}