import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/pages/IntroScreen.dart';
import 'package:page_transition/page_transition.dart';

Widget animatedSplashScreen(context) {
  return AnimatedSplashScreen(
    duration: 500,
    splash: 'assets/icons/logo.webp',
    splashTransition: SplashTransition.fadeTransition,
    pageTransitionType: PageTransitionType.fade,
    nextScreen: IntroScreen(),
  );
}
