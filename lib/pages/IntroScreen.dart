import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/pages/startScreen.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:get/get.dart';

class IntroScreen extends StatefulWidget {
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/intro_image/1st_intro.webp',
                      fit: BoxFit.fitWidth,
                      height: SizeConfig.blockSizeVertical * 50,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AutoSizeText(
                        'Start Your Journey, Right Here !',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 70,
                          // fontSize: SizeConfig.blockSizeVertical * 5,
                          shadows: [
                            Shadow(
                              blurRadius: 1,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: DotsIndicator(
                        dotsCount: 3,
                        position: 0,
                        decorator: DotsDecorator(
                          size: Size(SizeConfig.blockSizeVertical,
                              SizeConfig.blockSizeVertical),
                          activeSize: Size(SizeConfig.blockSizeVertical,
                              SizeConfig.blockSizeVertical),
                          color: Colors.black, // Inactive color
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/intro_image/2nd_intro.webp',
                      fit: BoxFit.fitWidth,
                      height: SizeConfig.blockSizeVertical * 50,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AutoSizeText(
                        'Play whatever game you love !',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins',
                          fontSize: 70,
                          // fontSize: SizeConfig.blockSizeVertical * 5,
                          shadows: [
                            Shadow(
                              blurRadius: 1,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: DotsIndicator(
                        dotsCount: 3,
                        position: 1,
                        decorator: DotsDecorator(
                          size: Size(SizeConfig.blockSizeVertical,
                              SizeConfig.blockSizeVertical),
                          activeSize: Size(SizeConfig.blockSizeVertical,
                              SizeConfig.blockSizeVertical),
                          color: Colors.black, // Inactive color
                          activeColor: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/intro_image/3rd_intro.webp',
                      fit: BoxFit.fitWidth,
                      height: SizeConfig.blockSizeVertical * 50,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AutoSizeText(
                        'Fill your wallet by playing tournament',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins',
                          fontSize: 70,
                          // fontSize: SizeConfig.blockSizeVertical * 5,
                          shadows: [
                            Shadow(
                              blurRadius: 1,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    flex: 0,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: DotsIndicator(
                            mainAxisAlignment: MainAxisAlignment.center,
                            dotsCount: 3,
                            position: 2,
                            decorator: DotsDecorator(
                              size: Size(SizeConfig.blockSizeVertical,
                                  SizeConfig.blockSizeVertical),
                              activeSize: Size(SizeConfig.blockSizeVertical,
                                  SizeConfig.blockSizeVertical),
                              color: Colors.black, // Inactive color
                              activeColor: Colors.red,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              onPressed: () {
                                Get.to(Startscreen());
                              },
                              child: flatButton(
                                borderRadius: 30,
                                text: 'Start ->',
                                paddingVertical:
                                    SizeConfig.blockSizeHorizontal * 2,
                                paddingHorizontal:
                                    SizeConfig.blockSizeHorizontal * 4,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
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
