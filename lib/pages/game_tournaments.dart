import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/dashboardAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/common/tournament_card.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Game_Tournaments extends StatefulWidget {
  @override
  _Game_TournamentsState createState() => _Game_TournamentsState();
}

// ignore: camel_case_types
class _Game_TournamentsState extends State<Game_Tournaments> {
  BottomDrawer bd = BottomDrawer();

  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appbarDashboard(context),
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
                    '${data['name']} Tournaments',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Column(
                            children: [
                              tournament_card(context, '${data['path']}',
                                  "${data['name']}"),
                              tournament_card(context, '${data['path']}',
                                  "${data['name']}"),
                              tournament_card(context, '${data['path']}',
                                  "${data['name']}"),
                              tournament_card(context, '${data['path']}',
                                  "${data['name']}"),
                              tournament_card(context, '${data['path']}',
                                  "${data['name']}"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bd,
        ],
      ),
    );
  }
}
