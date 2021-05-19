import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gamers_hub/pages/rules.dart';
import 'package:gamers_hub/pages/scheduleGame.dart';
import 'package:gamers_hub/pages/tournament_games.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class BottomDrawer extends StatefulWidget {
  @override
  _BottomDrawerState createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  @override
  Widget build(BuildContext context) {
    int currentTab = -1;
    return SlidingUpPanel(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      minHeight: SizeConfig.blockSizeVertical * 10,
      maxHeight: (SizeConfig.screenHeight / 1.5),
      collapsed: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      // currentScreen = Statistics();
                      currentTab = 0;
                    });
                  },
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/drawer_icon/statistics.webp',
                        ),
                        AutoSizeText(
                          'Stats',
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey,
                              fontFamily: 'poppins'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    Get.to(ScheduleGame());
                    setState(() {
                      currentTab = 1;
                    });
                  },
                  child: FittedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/drawer_icon/Schedule.webp',
                        ),
                        AutoSizeText(
                          'Schedule',
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey,
                              fontFamily: 'poppins'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: MaterialButton(
                    onPressed: () {
                      Get.off(Tournament_Games());
                      setState(() {
                        currentTab = 4;
                      });
                    },
                    child: Image.asset(
                      'assets/drawer_icon/gameButton.webp',
                      scale: 0.5,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      // currentScreen = Chat();
                      currentTab = 2;
                    });
                  },
                  child: FittedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/drawer_icon/chat.webp',
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.blue : Colors.grey,
                            fontFamily: 'poppins',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      // currentScreen = Profile();
                      currentTab = 3;
                    });
                  },
                  child: FittedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/drawer_icon/Profile.webp',
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey,
                              fontFamily: 'poppins'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      panel: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: SvgPicture.asset(
                              'assets/drawer_icon/down.svg',
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              onPressed: () {},
                              child: flatButton(
                                  borderRadius: 250,
                                  text: 'Logout',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.blockSizeHorizontal * 3,
                                  paddingHorizontal:
                                      SizeConfig.blockSizeHorizontal * 8,
                                  paddingVertical:
                                      SizeConfig.blockSizeVertical * 1.3),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              // currentScreen = Statistics();
                              currentTab = 0;
                            });
                          },
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawer_icon/statistics.webp',
                                ),
                                AutoSizeText(
                                  'Stats',
                                  style: TextStyle(
                                      color: currentTab == 0
                                          ? Colors.blue
                                          : Colors.grey,
                                      fontFamily: 'poppins'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            Get.to(ScheduleGame());
                            setState(() {
                              currentTab = 1;
                            });
                          },
                          child: FittedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawer_icon/Schedule.webp',
                                ),
                                AutoSizeText(
                                  'Schedule',
                                  style: TextStyle(
                                      color: currentTab == 1
                                          ? Colors.blue
                                          : Colors.grey,
                                      fontFamily: 'poppins'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            Get.to(Tournament_Games());
                            setState(() {
                              currentTab = 4;
                            });
                          },
                          child: FittedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawer_icon/game.webp',
                                ),
                                AutoSizeText(
                                  '    Play    ',
                                  style: TextStyle(
                                      color: currentTab == 4
                                          ? Colors.blue
                                          : Colors.grey,
                                      fontFamily: 'poppins'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              // currentScreen = Chat();
                              currentTab = 2;
                            });
                          },
                          child: FittedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawer_icon/chat.webp',
                                ),
                                Text(
                                  'Chat',
                                  style: TextStyle(
                                    color: currentTab == 2
                                        ? Colors.blue
                                        : Colors.grey,
                                    fontFamily: 'poppins',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              // currentScreen = Profile();
                              currentTab = 3;
                            });
                          },
                          child: FittedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawer_icon/Profile.webp',
                                ),
                                Text(
                                  'Profile',
                                  style: TextStyle(
                                      color: currentTab == 3
                                          ? Colors.blue
                                          : Colors.grey,
                                      fontFamily: 'poppins'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Statistics();
                                currentTab = 5;
                              });
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawer_icon/games.webp',
                                  ),
                                  AutoSizeText(
                                    'Games',
                                    style: TextStyle(
                                      color: currentTab == 5
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Schedule();
                                currentTab = 6;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawer_icon/transaction.webp',
                                ),
                                FittedBox(
                                  child: AutoSizeText(
                                    'Transaction \nand Earning',
                                    style: TextStyle(
                                      color: currentTab == 6
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Schedule();
                                currentTab = 7;
                              });
                            },
                            child: FittedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawer_icon/friend.webp',
                                  ),
                                  AutoSizeText(
                                    'Friends',
                                    style: TextStyle(
                                      color: currentTab == 7
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Chat();
                                currentTab = 8;
                              });
                            },
                            child: FittedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawer_icon/creategroup.webp',
                                  ),
                                  Text(
                                    'Create  \nGroup',
                                    style: TextStyle(
                                      color: currentTab == 8
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Profile();
                                currentTab = 9;
                              });
                            },
                            child: FittedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawer_icon/friendrequest.webp',
                                  ),
                                  Text(
                                    'Friend \nRequest',
                                    style: TextStyle(
                                      color: currentTab == 9
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Statistics();
                                currentTab = 10;
                              });
                            },
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawer_icon/yourteam.webp',
                                  ),
                                  AutoSizeText(
                                    'Your \nTeam',
                                    style: TextStyle(
                                      color: currentTab == 10
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Schedule();
                                currentTab = 11;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/drawer_icon/createteam.webp',
                                ),
                                FittedBox(
                                  child: AutoSizeText(
                                    'Create\nTeam',
                                    style: TextStyle(
                                      color: currentTab == 11
                                          ? Colors.blue
                                          : Colors.grey,
                                      fontFamily: 'poppins',
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Schedule();
                                currentTab = 12;
                              });
                            },
                            child: FittedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawer_icon/wallet.webp',
                                  ),
                                  AutoSizeText(
                                    'Wallet',
                                    style: TextStyle(
                                      color: currentTab == 12
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                currentTab = 13;
                              });
                            },
                            child: FittedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawer_icon/award.webp',
                                  ),
                                  Text(
                                    'Leader\nboard',
                                    style: TextStyle(
                                      color: currentTab == 13
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Profile();
                                currentTab = 14;
                              });
                            },
                            child: FittedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/drawer_icon/setting.webp',
                                  ),
                                  Text(
                                    'Settings',
                                    style: TextStyle(
                                      color: currentTab == 14
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {
                              Get.to(Rules(true));
                            },
                            child: flatButton(
                                borderRadius: 250,
                                text: 'Important Rules',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.blockSizeHorizontal * 3,
                                paddingHorizontal:
                                    SizeConfig.blockSizeHorizontal * 5,
                                paddingVertical:
                                    SizeConfig.blockSizeVertical * 2),
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            onPressed: () {},
                            child: flatButton(
                                borderRadius: 250,
                                text: 'Refer and Earn',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.blockSizeHorizontal * 3,
                                paddingHorizontal:
                                    SizeConfig.blockSizeHorizontal * 5,
                                paddingVertical:
                                    SizeConfig.blockSizeVertical * 2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
