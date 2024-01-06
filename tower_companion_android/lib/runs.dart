import 'package:flutter/material.dart';
import 'package:tower_companion_android/models/AltFire.dart';
import 'package:tower_companion_android/models/Trait.dart';
import 'package:tower_companion_android/models/Weapon.dart';
import 'package:tower_companion_android/models/stats.dart';
import 'package:tower_companion_android/models/tower_run.dart';
import 'package:tower_companion_android/services/database_helper.dart';
import 'package:tower_companion_android/tower_run_highlight.dart';

class Runs extends StatelessWidget {
  var db = DatabaseHelper();
  List<TowerRun> runs = [];
  Runs({super.key});

  void addTowerRun() {
    //TODO: Add code to let user add a TowerRun
    TowerRun run = TowerRun(
        id: 1,
        scoutName: "DR_JRB_",
        weapon: Weapon(
            "Dreadbound",
            AltFire.trackerSwarm,
            [
              Trait(
                  name: "Expanding Shards",
                  traitDescription: "Shards are expanding",
                  level: 3)
            ],
            45),
        stats: Stats(50.0, 40.0, 30.0, -5.0),
        score: 20000000,
        finalMultiplier: 90.0,
        averageMultiplier: 75.0,
        highestMultiplier: 100.0,
        phase: 13,
        room: 15,
        platform: "PS5",
        dateStarted: DateTime.now(),
        dateCompleted: DateTime.now());

    DatabaseHelper().insertTowerRun(run);
    print("run added");
  }

  void loadDb() async {
    runs = await DatabaseHelper().runs();
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
        backgroundColor: Colors.black,
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: runs.length,
          itemBuilder: (BuildContext context, int index) {
            return TowerRunHighlightWidget(run: runs[index]);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addTowerRun,
          tooltip: 'Add Tower Run',
          child: const Icon(Icons.add),
        ));
  }
}
