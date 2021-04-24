import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:gamers_hub/styleguide/image_asset.dart';
import 'package:gamers_hub/pages/signUp.dart';
import 'package:gamers_hub/appbar/appbarLogin.dart';
import 'package:get/get.dart';
import 'package:gamers_hub/styleguide/textstyle.dart';

class Startscreen extends StatefulWidget {
  @override
  _StartscreenState createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appbarLogin(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: SizeConfig.blockSizeHorizontal * 5,
                    child: Image.asset(
                      lol,
                      height: SizeConfig.screenWidth * 0.35,
                    ),
                  ), // lol
                  Positioned(
                    right: double.minPositive,
                    top: SizeConfig.blockSizeHorizontal * 25,
                    child: Image.asset(
                      freefire,
                      height: SizeConfig.screenWidth * 0.30,
                      alignment: Alignment.centerRight,
                    ),
                  ), // freefire
                  Positioned(
                    top: SizeConfig.blockSizeHorizontal * 15,
                    right: SizeConfig.screenWidth * 0.30,
                    child: Image.asset(
                      apex,
                      height: SizeConfig.screenWidth * 0.20,
                    ),
                  ), // apex
                  Positioned(
                    top: SizeConfig.blockSizeHorizontal * 40,
                    right: SizeConfig.blockSizeHorizontal * 47,
                    child: Image.asset(
                      pubg,
                      height: SizeConfig.screenWidth * 0.40,
                    ),
                  ), // pubg
                  Positioned(
                    top: SizeConfig.blockSizeVertical * 30,
                    right: SizeConfig.screenWidth * 0.2,
                    child: Image.asset(
                      coc,
                      height: SizeConfig.screenWidth * 0.17,
                    ),
                  ), // coc
                  Positioned(
                    top: SizeConfig.blockSizeVertical * 40,
                    right: SizeConfig.blockSizeHorizontal * 0,
                    child: Image.asset(
                      freefire_1,
                      height: SizeConfig.blockSizeVertical * 15,
                    ),
                  ), // freefire_1
                  Positioned(
                    top: SizeConfig.blockSizeVertical * 45,
                    right: SizeConfig.blockSizeHorizontal * 35,
                    child: Image.asset(
                      gob,
                      height: SizeConfig.blockSizeHorizontal * 25,
                    ),
                  ), // gob
                  Positioned(
                    left: SizeConfig.blockSizeHorizontal * 0,
                    top: SizeConfig.blockSizeVertical * 45,
                    child: Image.asset(
                      fortinite,
                      height: SizeConfig.blockSizeVertical * 15,
                      alignment: Alignment.centerRight,
                    ),
                  ), // fortinite
                  Positioned(
                    bottom: SizeConfig.blockSizeVertical * 22,
                    left: SizeConfig.blockSizeVertical,
                    child: Text(
                      'Lets Get',
                      style: textStyle(
                          fontSize: SizeConfig.screenWidth * 0.1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ), // Lets get
                  Positioned(
                    bottom: SizeConfig.blockSizeVertical * 15,
                    left: SizeConfig.blockSizeVertical,
                    child: Text(
                      'Started',
                      style: textStyle(
                          fontSize: SizeConfig.screenWidth * 0.1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ), // Started
                  Positioned(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          onPressed: () {
                            Get.to(SignUp());
                          },
                          child: flatButton(
                              borderRadius: SizeConfig.screenWidth * 0.1,
                              text: 'Sign Up',
                              paddingVertical: SizeConfig.blockSizeVertical * 3,
                              paddingHorizontal: SizeConfig.screenWidth * 0.25,
                              fontSize: SizeConfig.blockSizeVertical * 2.5,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ), // Signup button
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
