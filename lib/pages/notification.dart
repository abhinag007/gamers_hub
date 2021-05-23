import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/commonAppbar.dart';
import 'package:gamers_hub/appbar/dashboardAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/widget/usefulwidget.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                      'Notifications',
                      style: TextStyle(
                        fontFamily: 'Poppins',
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
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 17, 30, 17),
                            margin: EdgeInsets.only(top: 5),
                            decoration: notificationBoxDecoration(),
                            child: Row(
                              children: [
                                Icon(Icons.notification_add),
                                SizedBox(
                                  width: 30,
                                ),
                                Flexible(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    margin: EdgeInsets.only(top: 5),
                                    decoration:
                                        innerNotificationBoxDecoration(),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Blah Blah Blah',
                                          style: settingTextstyle(),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'XXX XXX XXX ',
                                          style: settingTextstyle(),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 17, 30, 17),
                            margin: EdgeInsets.only(top: 5),
                            decoration: notificationBoxDecoration(),
                            child: Row(
                              children: [
                                Icon(Icons.notification_add),
                                SizedBox(
                                  width: 30,
                                ),
                                Flexible(
                                  flex: 5,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    margin: EdgeInsets.only(top: 5),
                                    decoration:
                                        innerNotificationBoxDecoration(),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Blah Blah Blah',
                                          style: settingTextstyle(),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'XXX XXX XXX',
                                          style: settingTextstyle(),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            margin: EdgeInsets.only(top: 40),
                            decoration: pushNotificationBoxDecoration(),
                            child: Row(
                              children: [
                                Icon(Icons.notifications_on),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'Push Notification',
                                  style: settingTextstyle(),
                                ),
                              ],
                            ),
                          )
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
