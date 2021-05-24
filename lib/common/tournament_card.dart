import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';

// ignore: non_constant_identifier_names
Card tournament_card(
  context,
  var iconPath,
  var titleText,
) {
  return Card(
    elevation: 5,
    shadowColor: Colors.grey,
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    color: Colors.white,
    child: Container(
      height: 130,
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
                  height: 5,
                ),
                FittedBox(
                  child: AutoSizeText(
                    "Joined Players : 20",
                    style: TextStyle(fontFamily: 'poppins'),
                    maxLines: 1,
                  ),
                ),
                AutoSizeText(
                  "Date: 03/12/21",
                  style: TextStyle(fontFamily: 'poppins'),
                  maxLines: 1,
                ),
                AutoSizeText(
                  "Time: 15:20",
                  style: TextStyle(fontFamily: 'poppins'),
                  maxLines: 1,
                ),
              ],
            ),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("PLAYERS : 50"),
                AutoSizeText(
                  "Solo",
                  style: TextStyle(fontSize: 15),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {},
                  child: flatButton(
                      borderRadius: SizeConfig.screenWidth * 0.1,
                      text: 'JOIN',
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
