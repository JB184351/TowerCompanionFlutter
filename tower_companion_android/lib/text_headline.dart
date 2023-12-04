import 'dart:ui';

import 'package:flutter/material.dart';
import 'colors.dart';

class TextHeadline extends StatelessWidget {
  final String text;
  final Color color;

  const TextHeadline(
      {this.text = "Testing",
      this.color = MyColors.returnalLightBlue,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 17, // You can adjust the font size as needed
        fontWeight: FontWeight.bold,
        fontFeatures: const [FontFeature.tabularFigures()],
        color: color,
      ),
    );
  }
}
