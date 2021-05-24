import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';

Card leaderboardCard(
    context, var iconPath, var titleText, var winning, var rank) {
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
            child: CircularProfileAvatar(
              '',
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.asset(
                  iconPath,
                  scale: 1,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  titleText,
                  style: TextStyle(fontFamily: 'poppins'),
                  maxLines: 1,
                  minFontSize: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                AutoSizeText(
                  "winning of Winnings : $winning",
                  style: TextStyle(fontFamily: 'poppins'),
                  maxLines: 2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: SizeConfig.blockSizeVertical * 3,
                  height: SizeConfig.blockSizeVertical * 3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color(0xffF64524),
                      const Color(0xffAC0D58),
                    ]),
                    borderRadius: BorderRadius.circular(300),
                  ),
                  child: Center(
                    child: AutoSizeText(
                      "$rank",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {},
                  child: flatButton(
                      borderRadius: SizeConfig.screenWidth * 0.1,
                      text: 'VIEW',
                      paddingVertical: SizeConfig.blockSizeHorizontal * 2,
                      paddingHorizontal: SizeConfig.screenWidth * 0.05,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
