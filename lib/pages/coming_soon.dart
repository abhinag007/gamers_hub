import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/onlyBack.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';

// ignore: camel_case_types
class Coming_Soon extends StatefulWidget {
  @override
  _Coming_SoonState createState() => _Coming_SoonState();
}

// ignore: camel_case_types
class _Coming_SoonState extends State<Coming_Soon> {
  BottomDrawer bd = BottomDrawer();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'poppins',
    );
    return Scaffold(
      appBar: appbarOnlyBack(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'Comming Soon!',
                            textStyle: colorizeTextStyle,
                            colors: colorizeColors,
                          ),
                          ColorizeAnimatedText(
                            'We\'ll Work on it',
                            textStyle: colorizeTextStyle,
                            colors: colorizeColors,
                          ),
                        ],
                        repeatForever: true,
                        isRepeatingAnimation: true,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bd,
        ],
      ),
    );
  }
}
