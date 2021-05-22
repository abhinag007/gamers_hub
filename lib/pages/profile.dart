import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/commonAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  BottomDrawer bd = BottomDrawer();
  String text = "5000";
  String text1 = "5000";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appbarCommon(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: SizeConfig.blockSizeVertical * 4,
                      shadows: [
                        Shadow(
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    maxLines: 2,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Center(
                          child: FittedBox(
                              child: Image.asset(
                                  'assets/profile_image/profile.png')),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        FittedBox(
                          child: Text(
                            'Harshad Mehta',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xfff000000)),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            'Level 5',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                color: Color(0xfff000000)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Earned',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                      color: Colors.black),
                                ),
                                Text(
                                  "$text",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Points',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                      color: Colors.black),
                                ),
                                Text(
                                  '$text1',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 17,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Your Bio',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //color: Colors.grey,
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  'My name is shashwat pandey my manme is abhijeet nag my namge jisn sjdfb sdjhfb',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Category',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  color: Colors.black),
                            ))
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          bd
        ],
      ),
    );
  }
}
