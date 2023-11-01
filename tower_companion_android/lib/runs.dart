import 'package:flutter/material.dart';

class Runs extends StatelessWidget {
  const Runs({super.key});

  void addTowerRun() {
    int x = 5;
    print('Adding Tower Run... $x');
    int y = 0 + x;
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
        body: Center(
          child: Text('To add a run press here.'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addTowerRun,
          tooltip: 'Add Tower Run',
          child: const Icon(Icons.add),
        ));
  }
}
