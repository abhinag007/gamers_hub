import 'package:flutter/material.dart';
import 'package:gamers_hub/pages/login.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:gamers_hub/styleguide/image_asset.dart';
import 'package:get/get.dart';

AppBar appbarLogin(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: Image.asset(
      logo,
      // height: SizeConfig.screenWidth * 0.1,
    ),
    elevation: 0,
    title: Text(
      "Gamer's Hub",
      style: TextStyle(
        color: Colors.black,
        fontFamily: 'Poppins',
        fontSize: SizeConfig.blockSizeVertical * 2.3,
      ),
    ),
    actions: [
      // ignore: deprecated_member_use
      FlatButton(
        onPressed: () {
          Get.to(Login());
        },
        child: flatButton(
            borderRadius: SizeConfig.screenWidth * 0.1,
            text: 'Login',
            paddingVertical: SizeConfig.blockSizeHorizontal * 3,
            paddingHorizontal: SizeConfig.screenWidth * 0.07,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    ],
  );
}
