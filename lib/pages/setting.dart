import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/commonAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/pages/profile.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:gamers_hub/widget/usefulwidget.dart';
import 'package:get/get.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  BottomDrawer bd = BottomDrawer();
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
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Setting',
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
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(Profile());
                            },
                            child: Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Profile Setting',
                                  style: settingTextstyle(),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              padding: EdgeInsets.only(
                                  left: 30, top: 17, right: 30, bottom: 17),
                              margin: EdgeInsets.only(top: 15),
                              decoration: settingBoxDecoration(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Notification',
                                  style: settingTextstyle(),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              padding: EdgeInsets.only(
                                  left: 30, top: 17, right: 30, bottom: 17),
                              margin: EdgeInsets.only(top: 15),
                              decoration: settingBoxDecoration(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Customer Support',
                                  style: settingTextstyle(),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              padding: EdgeInsets.only(
                                  left: 30, top: 17, right: 30, bottom: 17),
                              margin: EdgeInsets.only(top: 15),
                              decoration: settingBoxDecoration(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'FAQ',
                                  style: settingTextstyle(),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              padding: EdgeInsets.only(
                                  left: 30, top: 17, right: 30, bottom: 17),
                              margin: EdgeInsets.only(top: 15),
                              decoration: settingBoxDecoration(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'About Us',
                                  style: settingTextstyle(),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              padding: EdgeInsets.only(
                                  left: 30, top: 17, right: 30, bottom: 17),
                              margin: EdgeInsets.only(top: 15),
                              decoration: settingBoxDecoration(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Privacy Policy',
                                  style: settingTextstyle(),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              padding: EdgeInsets.only(
                                  left: 30, top: 17, right: 30, bottom: 17),
                              margin: EdgeInsets.only(top: 15),
                              decoration: settingBoxDecoration(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Rate App',
                                  style: settingTextstyle(),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              padding: EdgeInsets.only(
                                  left: 30, top: 17, right: 30, bottom: 17),
                              margin: EdgeInsets.only(top: 15),
                              decoration: settingBoxDecoration(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
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
