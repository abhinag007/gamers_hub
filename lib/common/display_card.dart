import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/pages/game_tournaments.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:get/get.dart';

Card displayCard(context, var iconPath, var titleText, var number) {
  return Card(
    elevation: 5,
    shadowColor: Colors.grey,
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    color: Colors.white,
    child: Container(
      height: 125,
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              iconPath,
              scale: 1.2,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  titleText,
                  style: TextStyle(fontFamily: 'poppins', fontSize: 20),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                AutoSizeText(
                  "Number of Tournaments : $number",
                  style: TextStyle(fontFamily: 'poppins'),
                  maxLines: 2,
                  minFontSize: 8,
                ),
              ],
            ),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                Get.to(Game_Tournaments(),
                    arguments: {'path': iconPath, 'name': titleText});
              },
              child: flatButton(
                  borderRadius: SizeConfig.screenWidth * 0.1,
                  text: 'PLAY',
                  paddingVertical: SizeConfig.blockSizeHorizontal * 2,
                  paddingHorizontal: SizeConfig.screenWidth * 0.05,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}
