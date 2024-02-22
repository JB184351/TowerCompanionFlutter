import 'Weapon.dart';
import 'artifact.dart';
import 'parasite.dart';
import 'stats.dart';
import 'malfunction.dart';
import 'combat.dart';
import 'skill.dart';
import 'explorer.dart';
import 'objectives.dart';
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TowerRun {
  final int id;
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
      {required this.id,
      required this.scoutName,
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

  factory TowerRun.fromMap(Map<String, dynamic> json) => TowerRun(
      id: json['id'],
      scoutName: json['scoutName'],
      weapon: json['weapon'],
      artifacts: json['artifacts'],
      parasites: json['parasites'],
      stats: json['stats'],
      malfunctions: json['malfunctions'],
      score: json['score'],
      finalMultiplier: json['finalMultiplier'],
      averageMultiplier: json['averageMultiplier'],
      highestMultiplier: json['highestMultiplier'],
      phase: json['phase'],
      room: json['room'],
      platform: json['platform'],
      combat: json['combat'],
      explorer: json['combat'],
      skill: json['skill'],
      objectives: json['objectives'],
      dateStarted: json['dateStarted'],
      dateCompleted: json['dateCompleted']);

  Map<String, dynamic> toMap() => {
        'scoutName': scoutName,
        'weapon': weapon,
        'artifacts': artifacts,
        'parasites': parasites,
        'stats': stats,
        'malfunctions': malfunctions,
        'score': score,
        'finalMultiplier': finalMultiplier,
        'averageMultiplier': averageMultiplier,
        'highestMultiplier': highestMultiplier,
        'phase': phase,
        'room': room,
        'platform': platform,
        'combat': combat,
        'explorer': explorer,
        'skill': skill,
        'objectives': objectives,
        'dateStarted': dateStarted,
        'dateCompleted': dateCompleted
      };

  @override
  String toString() {
    return 'TowerRun(id: $id, scoutName: $scoutName, artifacts: $artifacts, parasites: $parasites, stats: $stats, malfunctions: $malfunctions, score: $score, finalMultiplier: $finalMultiplier, averageMultiplier: $averageMultiplier, highestMultiplier: $highestMultiplier, phase: $phase, room: $room, platform: $platform, combat: $combat, explorer: $explorer, skill: $skill, objectives: $objectives, dateStarted: $dateStarted, dateCompleted: $dateCompleted)';
  }
}
