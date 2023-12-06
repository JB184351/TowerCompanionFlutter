import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tower_companion_android/models/tower_run.dart';
import 'package:intl/intl.dart'; // for date format
import 'package:intl/date_symbol_data_local.dart';
import 'colors.dart';

class TowerRunHighlightWidget extends StatefulWidget {
  final TowerRun run;

  const TowerRunHighlightWidget({super.key, required this.run});

  @override
  State<TowerRunHighlightWidget> createState() =>
      _TowerRunHighlightWidgetState(run);
}

class _TowerRunHighlightWidgetState extends State<TowerRunHighlightWidget> {
  TowerRun run;

  _TowerRunHighlightWidgetState(this.run);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.returnalGreen,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                run.scoutName,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFeatures: [FontFeature.tabularFigures()],
                  color: MyColors.returnalYellow,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    NumberFormat('#,##0', 'en_US').format(run.score),
                    style: const TextStyle(
                      color: MyColors.returnalLightBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    DateFormat().add_yMd().add_jm().format(run.dateCompleted),
                    style: const TextStyle(
                      color: MyColors.returnalLightBlue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    run.weapon.name,
                    style: const TextStyle(
                      color: MyColors.returnalLightBlue,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    run.platform,
                    style: const TextStyle(
                      color: MyColors.returnalLightBlue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
