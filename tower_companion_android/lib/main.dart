import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tower_companion_android/runs.dart';
import 'package:tower_companion_android/services/database_helper.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final DatabaseHelper instance = DatabaseHelper();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Runs().loadDb();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Runs(),
    );
  }
}
