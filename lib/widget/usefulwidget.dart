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

BoxDecoration notificationBoxDecoration() {
  return BoxDecoration(
      color: Color(0xfffFFF9F9),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(color: Colors.black26, offset: Offset(0, 5), blurRadius: 15),
      ]);
}

BoxDecoration pushNotificationBoxDecoration() {
  return BoxDecoration(
      color: Color(0xfffFFFFFF),
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(color: Colors.black26, offset: Offset(0, 10), blurRadius: 15),
      ],
      border: Border.all(color: Color(0xfff000000), width: 1));
}

BoxDecoration innerNotificationBoxDecoration() {
  return BoxDecoration(
    color: Color(0xfffFFF9F9),
    borderRadius: BorderRadius.circular(20),
  );
}
