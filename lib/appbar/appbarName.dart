import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/textstyle.dart';
import 'package:get/get.dart';

AppBar appbarName(context) {
  return AppBar(
    toolbarHeight: SizeConfig.screenWidth * 0.15,
    leading: IconButton(
      iconSize: SizeConfig.blockSizeHorizontal * 10,
      icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
      onPressed: () => Get.back(),
    ),
    title: Text(
      'Gamer\'s Hub',
      style: textStyle(
          fontSize: SizeConfig.screenWidth * 0.06,
          fontWeight: FontWeight.bold,
          color: Colors.black),
    ),
    centerTitle: true,
  );
}
