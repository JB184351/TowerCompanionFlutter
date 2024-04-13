import 'package:flutter/material.dart';
import 'package:tower_companion_android/database/tower_run_database.dart';
import 'package:tower_companion_android/models/artifact.dart';
import 'package:tower_companion_android/models/combat.dart';
import 'package:tower_companion_android/models/explorer.dart';
import 'package:tower_companion_android/models/malfunction.dart';
import 'package:tower_companion_android/models/objectives.dart';
import 'package:tower_companion_android/models/parasite.dart';
import 'package:tower_companion_android/models/skill.dart';
import 'package:tower_companion_android/models/stats.dart';
import 'package:tower_companion_android/models/tower_run.dart';
import 'package:tower_companion_android/models/weapon.dart';

class Runs extends StatelessWidget {
  const Runs({super.key});

  void addTowerRun() {
    TowerRun run = TowerRun();
    run.scoutName = "Test";
    run.weapon = Weapon();
    run.artifacts = [Artifact()];
    run.parasites = [Parasite()];
    run.stats = Stats();
    run.malfunctions = [Malfunction()];
    run.score = 3221341234;
    run.finalMultiplier = 100.0;
    run.averageMultiplier = 79.0;
    run.highestMultiplier = 100.0;
    run.phase = 13;
    run.room = 20;
    run.platform = "PS5";
    run.combat = Combat();
    run.explorer = Explorer();
    run.skill = Skill();
    run.objectives = Objectives();
    run.dateStarted = DateTime.now();
    run.dateCompleted = DateTime.now();

    TowerRunDatabase().addRun(run);

    print(
        "The number of runs is ${TowerRunDatabase().currentRuns[0].finalMultiplier}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tower Runs',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.green,
        body: const Center(
          child: Text('To add a run press here.'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addTowerRun,
          tooltip: 'Add Tower Run',
          child: const Icon(Icons.add),
        ));
  }
}
