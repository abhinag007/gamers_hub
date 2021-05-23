import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle settingTextstyle() {
  return TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: Colors.black);
}

BoxDecoration settingBoxDecoration() {
  return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(color: Colors.black26, offset: Offset(0, 5), blurRadius: 15),
      ]);
}
