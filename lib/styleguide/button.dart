import 'package:flutter/material.dart';
import 'package:gamers_hub/styleguide/textstyle.dart';
import 'color.dart';

Container flatButton({
  double borderRadius,
  String text,
  double paddingVertical,
  double paddingHorizontal,
  double fontSize,
  FontWeight fontWeight,
  Color color,
}) {
  return Container(
    decoration: BoxDecoration(
      gradient: appGradient,
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: paddingVertical, horizontal: paddingHorizontal),
      child: Text(
        text,
        style:
            textStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
      ),
    ),
  );
}
