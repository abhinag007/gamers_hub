import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/commonAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/common/card_leaderboard.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';

class Leaderboard extends StatefulWidget {
  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    BottomDrawer bd = BottomDrawer();
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    'Leaderboard',
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
                              leaderboardCard(context, 'assets/Images/img.webp',
                                  "Ram Prasad", 450, 1),
                              leaderboardCard(context, 'assets/Images/img.webp',
                                  "Shaswat Pandey", 200, 2),
                              leaderboardCard(context, 'assets/Images/img.webp',
                                  "Abhijeet nag", 90, 3),
                              leaderboardCard(context, 'assets/Images/img.webp',
                                  "Free Fire", 66, 4),
                              leaderboardCard(context, 'assets/Images/img.webp',
                                  "Apex Legend", 49, 5),
                              leaderboardCard(context, 'assets/Images/img.webp',
                                  "Clash Of Clans", 32, 6),
                              leaderboardCard(context, 'assets/Images/img.webp',
                                  "Fortinite", 29, 7),
                              leaderboardCard(context, 'assets/Images/img.webp',
                                  "Free Fire", 16, 8),
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
