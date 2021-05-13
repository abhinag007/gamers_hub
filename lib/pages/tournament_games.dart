import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/dashboardAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/common/display_card.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';

// ignore: camel_case_types
class Tournament_Games extends StatefulWidget {
  @override
  _Tournament_GamesState createState() => _Tournament_GamesState();
}

// ignore: camel_case_types
class _Tournament_GamesState extends State<Tournament_Games> {
  BottomDrawer bd = BottomDrawer();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    bool selected = false;
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
                    'Tournaments',
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
                              displayCard(
                                  context,
                                  'assets/card_images/Apex.webp',
                                  "Apex Legend",
                                  4),
                              displayCard(
                                  context,
                                  'assets/card_images/coc.webp',
                                  "Clash Of Clans",
                                  2),
                              displayCard(
                                  context,
                                  'assets/card_images/fortinite.webp',
                                  "Fortinite",
                                  2),
                              displayCard(
                                  context,
                                  'assets/card_images/freefire.webp',
                                  "Free Fire",
                                  6),
                              displayCard(
                                  context,
                                  'assets/card_images/Apex.webp',
                                  "Apex Legend",
                                  4),
                              displayCard(
                                  context,
                                  'assets/card_images/coc.webp',
                                  "Clash Of Clans",
                                  2),
                              displayCard(
                                  context,
                                  'assets/card_images/fortinite.webp',
                                  "Fortinite",
                                  2),
                              displayCard(
                                  context,
                                  'assets/card_images/freefire.webp',
                                  "Free Fire",
                                  6),
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
