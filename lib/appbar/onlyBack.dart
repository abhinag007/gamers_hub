import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:get/get.dart';

AppBar appbarOnlyBack(context) {
  return AppBar(
    toolbarHeight: SizeConfig.screenWidth * 0.15,
    leading: IconButton(
      iconSize: SizeConfig.blockSizeHorizontal * 10,
      icon: Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Get.back(),
    ),
  );
}
