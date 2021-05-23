import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamers_hub/common/appbartheme.dart';
import 'package:gamers_hub/pages/profile.dart';
import 'package:gamers_hub/pages/setting.dart';
import 'package:gamers_hub/pages/statistics.dart';
import 'package:gamers_hub/pages/tournament_games.dart';
import 'package:get/get.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light),
    );
    return GetMaterialApp(
      theme: themeData,
      defaultTransition: Transition.fadeIn,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Gamer\'s Hub',
      // home: animatedSplashScreen(context),
      // home: Rules(false),
      home: Setting(),
      debugShowCheckedModeBanner: false,
    );
  }
}
