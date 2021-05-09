import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/onlyBack.dart';
import 'package:gamers_hub/pages/userDetailsRegister.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:gamers_hub/styleguide/textstyle.dart';
import 'package:get/get.dart';

class VerificationUI extends StatefulWidget {
  @override
  _VerificationUIState createState() => _VerificationUIState();
}

class _VerificationUIState extends State<VerificationUI> {
  @override
  Widget build(BuildContext context) {
    var _number = Get.arguments;
    var otp;
    return Scaffold(
      appBar: appbarOnlyBack(context),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),
            Text(
              'Enter Code Sent To Your Number',
              style: textStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.blockSizeHorizontal * 10,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),
            Text(
              'We will send you a Confirmation Code on',
              style: textStyleRegular(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: SizeConfig.blockSizeHorizontal * 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  _number,
                  style: textStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: SizeConfig.blockSizeHorizontal * 7),
                ),
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: TweenAnimationBuilder(
                      tween: Tween(begin: 30.0, end: 0),
                      duration: Duration(seconds: 30),
                      builder: (context, value, child) => Text(
                        "00:${value.toInt()}",
                        style: textStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                      onEnd: () {
                        // ignore: deprecated_member_use
                      },
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: SizeConfig.screenWidth,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      otp = value;
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              // ignore: deprecated_member_use
              child: FlatButton(
                // TODO: Add Firebase Otp verification
                onPressed: () {
                  print(otp);
                },
                child: flatButton(
                    borderRadius: SizeConfig.blockSizeVertical * 20,
                    text: 'Resend',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.blockSizeHorizontal * 4,
                    paddingHorizontal: SizeConfig.blockSizeVertical * 3,
                    paddingVertical: SizeConfig.blockSizeVertical * 1.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              // ignore: deprecated_member_use
              child: Center(
                child: FlatButton(
                  // TODO: Add Firebase Otp verification
                  onPressed: () {
                    Get.offAll(UserDetailsRegister());
                  },
                  child: flatButton(
                      borderRadius: SizeConfig.blockSizeVertical * 20,
                      text: 'SUBMIT',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.blockSizeHorizontal * 5,
                      paddingHorizontal: SizeConfig.blockSizeVertical * 10,
                      paddingVertical: SizeConfig.blockSizeVertical * 2.2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
