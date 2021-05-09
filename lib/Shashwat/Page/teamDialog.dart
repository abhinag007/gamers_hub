import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';

Widget teamDialog(BuildContext context) {
  SizeConfig().init(context);
  return AlertDialog(
    backgroundColor: Colors.transparent,
    insetPadding: EdgeInsets.fromLTRB(0, 20, 0, 20),
    title: Stack(
      children: [
        Container(
            padding: EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 30),
            margin: EdgeInsets.only(top: 45),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: <Widget>[
                    Image(
                      image: AssetImage(
                        'assets/dialog_image/Ellipse.png',
                      ),
                      height: 132,
                      width: 132,
                    ),
                    Image(
                      image: AssetImage('assets/dialog_image/Vector.png'),
                      height: 105,
                      width: 138,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                  width: 375,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  margin: EdgeInsets.only(right: 0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'You Created your Team',
                          style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 1.0,
                                    color: Colors.black)
                              ],
                              fontSize: 35,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 375,
                ),
              ],
            )),
      ],
    ),
  );
}
