import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/commonAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/common/buttonstyle.dart';
import 'package:gamers_hub/pages/instruction.dart';
//import 'package:gamers_hub/pages/game_rules.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';

class GameRule extends StatefulWidget {
  @override
  _GameRuleState createState() => _GameRuleState();
}

class _GameRuleState extends State<GameRule> {
  String text = "";
  String text1 =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl sed nisl nunc, ultricies donecodio mi. Lectus lacus dui convallisvitae interdum augue commodo sollicitudin cras. Bibendum diam at amet nulla risus sed dolor molestie faucibus. Ultricies pulvinar malesuada adipiscing tortor eu pulvinar urna sagittis congue.";

  String text2 =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl sed nisl nunc, ultricies donecodio mi. Lectus lacus dui convallisvitae interdum augue commodo sollicitudin cras. Bibendum diam at amet nulla risus sed dolor molestie faucibus. Ultricies pulvinar malesuada adipiscing tortor eu pulvinar urna sagittis congue sjdfb sjhdhfbjsh sjbfjshv.";
  bool textChange = false;
  bool colorchange = false;
  // void toggleState() {
  //   setState(() {
  //     textChange = !textChange;
  //   });

  //   if (textChange == true) {
  //     text1 = text2;
  //   } else if (textChange == false) {
  //     text1;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appbarCommon(context),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      textChange = !textChange;
                    });
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Instruction()));
                  },
                  child: Ink(
                    child: Container(
                      //  color: textChange ? Colors.grey : Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                      decoration: BoxDecoration(
                          color: textChange ? Colors.grey : Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        'Instruction',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                  decoration: BoxDecoration(
                    color: textChange ? Colors.red : Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Game Rules',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "$text2",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            // Container(alignment: Alignment.bottomCenter, child: BottomDrawer()),
          ],
        ),
      ),
    );
  }
}
