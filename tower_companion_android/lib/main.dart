import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:tower_companion_android/models/tower_run.dart';
import 'package:tower_companion_android/runs.dart';
import 'package:tower_companion_android/database/tower_run_database.dart';
import 'package:isar/isar.dart';

void main() async {
  // Initialize note isar database
  WidgetsFlutterBinding.ensureInitialized();
  await TowerRunDatabase.initialize();

  runApp(ChangeNotifierProvider(
    create: (context) => TowerRunDatabase(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Runs(),
    );
  }
}
