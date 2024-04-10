import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tower_companion_android/models/tower_run.dart';

class TowerRunDatabase {
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
    // Save
    await isar.writeTxn(() => isar.towerRuns.put(run));

    // re-read from db
    fetchRuns();
  }

  // READ
  Future<void> fetchRuns() async {
    List<TowerRun> fetchRuns = await isar.towerRuns.where().findAll();
    currentRuns.clear();
    currentRuns.addAll(fetchRuns);
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
