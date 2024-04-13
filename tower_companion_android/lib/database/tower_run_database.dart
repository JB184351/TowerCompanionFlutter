import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tower_companion_android/models/tower_run.dart';

class TowerRunDatabase extends ChangeNotifier {
  static late Isar isar;

  // Initialize
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([TowerRunSchema], directory: dir.path);
  }

  // List of runs
  final List<TowerRun> currentRuns = [];

  // CREATE
  Future<void> addRun(TowerRun run) async {
    final newRun = TowerRun();
    newRun.scoutName = run.scoutName;
    newRun.weapon = run.weapon;
    newRun.artifacts = run.artifacts;
    newRun.parasites = run.parasites;
    newRun.stats = run.stats;
    newRun.malfunctions = run.malfunctions;
    newRun.score = run.score;
    newRun.finalMultiplier = run.finalMultiplier;
    newRun.averageMultiplier = run.averageMultiplier;
    newRun.highestMultiplier = run.highestMultiplier;
    newRun.phase = run.phase;
    newRun.room = run.room;
    newRun.platform = run.platform;
    newRun.combat = run.combat;
    newRun.explorer = run.explorer;
    newRun.skill = run.skill;
    newRun.objectives = run.objectives;
    newRun.dateStarted = run.dateStarted;
    newRun.dateCompleted = run.dateCompleted;

    // Save
    await isar.writeTxn(() => isar.towerRuns.put(newRun));

    // re-read from db
    fetchRuns();
  }

  // READ
  Future<void> fetchRuns() async {
    List<TowerRun> fetchRuns = await isar.towerRuns.where().findAll();
    currentRuns.clear();
    currentRuns.addAll(fetchRuns);
    notifyListeners();
  }

  // UPDATE
  Future<void> updateRun(int id, TowerRun run) async {
    final currentRun = await isar.towerRuns.get(id);
    if (currentRun != null) {
      await isar.writeTxn(() => isar.towerRuns.put(run));
      await fetchRuns();
    }
  }

  // DELETE
  Future<void> deleteRun(int id) async {
    await isar.writeTxn(() => isar.towerRuns.delete(id));
    await fetchRuns();
  }
}
