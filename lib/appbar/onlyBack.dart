import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar appbarOnlyBack(context) {
  return AppBar(
    // toolbarHeight: SizeConfig.screenWidth * 0.15,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_rounded, color: Colors.black),
      onPressed: () => Get.back(),
    ),
  );
}
