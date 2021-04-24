import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/textstyle.dart';

AppBar appbarCommon(context) {
  return AppBar(
    toolbarHeight: SizeConfig.screenWidth * 0.15,
    leading: IconButton(
      iconSize: SizeConfig.blockSizeHorizontal * 10,
      autofocus: true,
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () => Navigator.of(context).pop(),
    ),
    actions: [
      IconButton(
          icon: Icon(
            Icons.notifications,
            color: Colors.black,
            size: SizeConfig.blockSizeHorizontal * 10,
          ),
          onPressed: null),
      Container(
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 2),
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: SizeConfig.blockSizeHorizontal * 30,
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
                fontSize: SizeConfig.blockSizeHorizontal * 6,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
      ),
    ],
  );
}
