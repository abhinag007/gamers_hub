import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/image_asset.dart';
import 'package:gamers_hub/styleguide/textstyle.dart';

AppBar appbarDashboard(context) {
  return AppBar(
    // toolbarHeight: SizeConfig.screenWidth * 0.15,
    leading: FittedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Image.asset(
          logo,
          // width: SizeConfig.screenWidth,
          fit: BoxFit.fitHeight,
        ),
      ),
    ),
    title: FittedBox(
      fit: BoxFit.contain,
      child: Text(
        'Gamer\'s Hub',
        style: textStyle(
            // fontSize: SizeConfig.screenWidth * 0.07,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    ),
    actions: [
      IconButton(
        // iconSize: SizeConfig.blockSizeHorizontal * 10,
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
