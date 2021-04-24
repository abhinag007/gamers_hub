import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle textStyle({
  double fontSize,
  FontWeight fontWeight,
  Color color,
}) {
  final kStartText = TextStyle(
    fontWeight: fontWeight,
    fontFamily: 'Poppins',
    fontSize: fontSize,
    color: color,
  );
  return kStartText;
}

TextStyle textStyleRegular({
  double fontSize,
  FontWeight fontWeight,
  Color color,
}) {
  final kStartText = TextStyle(
    fontWeight: fontWeight,
    fontFamily: 'Poppins',
    fontSize: fontSize,
    color: color,
  );
  return kStartText;
}

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.zero,
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: Colors.grey),
  );
}
