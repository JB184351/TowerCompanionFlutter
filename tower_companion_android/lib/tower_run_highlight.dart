import 'package:flutter/material.dart';
import 'package:tower_companion_android/models/tower_run.dart';
import 'package:tower_companion_android/text_headline.dart';
import 'colors.dart';

class TowerRunHighlightWidget extends StatefulWidget {
  final TowerRun run;

  const TowerRunHighlightWidget({super.key, required this.run});

  @override
  State<TowerRunHighlightWidget> createState() =>
      _TowerRunHighlightWidgetState();
}

class _TowerRunHighlightWidgetState extends State<TowerRunHighlightWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Widget build(BuildContext context) {
  return Container(
      width: 25,
      height: 25,
      color: MyColors.returnalGreen,
      child:
          const TextHeadline(text: "Test", color: MyColors.returnalLightBlue));
}
