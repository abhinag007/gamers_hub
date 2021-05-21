import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/commonAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    BottomDrawer bd = BottomDrawer();
    final List<Color> gradientColors = [
      const Color(0xff23b6e6),
      const Color(0xff02d39a),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appbarCommon(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(0, 10, 25, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Text(
                      'Statistics',
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Container(
                            // color: Colors.redAccent,
                            height: 190,
                            width: double.infinity,
                            child: LineChart(
                              LineChartData(
                                minX: 0,
                                maxX: 11,
                                minY: 0,
                                maxY: 6,
                                borderData: FlBorderData(
                                  show: true,
                                  border: Border.all(
                                      color: Colors.redAccent, width: 1),
                                ),
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 5),
                                      FlSpot(2, 2),
                                      FlSpot(4, 4),
                                      FlSpot(7, 1),
                                      FlSpot(9.5, 5.5),
                                      FlSpot(11, 4.5),
                                    ],
                                    isCurved: true,
                                    colors: gradientColors,
                                    barWidth: 3,
                                    belowBarData: BarAreaData(
                                      show: true,
                                      colors: gradientColors
                                          .map(
                                              (color) => color.withOpacity(0.3))
                                          .toList(),
                                    ),
                                    dotData: FlDotData(
                                      show: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            child: Text(
                              'Your Earning',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: SizeConfig.blockSizeVertical * 3,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 5),
                                height: SizeConfig.blockSizeVertical * 9,
                                width: SizeConfig.blockSizeVertical * 9,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'assets/card_images/Apex.webp',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  "APEX",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$245",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 5),
                                height: SizeConfig.blockSizeVertical * 9,
                                width: SizeConfig.blockSizeVertical * 9,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'assets/card_images/coc.webp',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Clash of Clans",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$245",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 5),
                                height: SizeConfig.blockSizeVertical * 9,
                                width: SizeConfig.blockSizeVertical * 9,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'assets/card_images/cod.webp',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Call of Duty",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$245",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 25, top: 5),
                                height: SizeConfig.blockSizeVertical * 9,
                                width: SizeConfig.blockSizeVertical * 9,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'assets/card_images/fortinite.webp',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Fortinite",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$245",
                                style: TextStyle(fontSize: 20),
                              ),
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
