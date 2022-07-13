import 'package:disney_plus_reimagined/view/shared/colors.dart';
import 'package:flutter/material.dart';

// === TYPOGRAPHY == //
Widget body(
  String text, [
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
]) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
