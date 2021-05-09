import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/textstyle.dart';
import 'package:get/get.dart';

AppBar appbarCommon(context) {
  return AppBar(
    // toolbarHeight: SizeConfig.screenWidth * 0.1,
    leading: IconButton(
      // iconSize: SizeConfig.blockSizeHorizontal * 10,
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () => Get.back,
    ),
    actions: [
      IconButton(
          icon: Icon(
            Icons.notifications,
            color: Colors.black,
            // size: SizeConfig.blockSizeHorizontal * 10,
          ),
          onPressed: null),
      Container(
        margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockSizeHorizontal * 2,
          vertical: SizeConfig.blockSizeHorizontal,
        ),
        width: SizeConfig.blockSizeHorizontal * 25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            '\$526',
            style: textStyle(
                // fontSize: SizeConfig.blockSizeHorizontal * 6,
                // fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
      ),
    ],
  );
}
