import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/onlyBack.dart';
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
                      tween: Tween(begin: 3.0, end: 0),
                      duration: Duration(seconds: 3),
                      builder: (context, value, child) => Text(
                        "00:${value.toInt()}",
                        style: textStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                      onEnd: () {
                        // ignore: deprecated_member_use
                        FlatButton(
                          onPressed: () {},
                          child: flatButton(
                              borderRadius: SizeConfig.blockSizeVertical * 5,
                              text: 'Resend',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.blockSizeHorizontal * 5,
                              paddingHorizontal:
                                  SizeConfig.blockSizeVertical * 5,
                              paddingVertical:
                                  SizeConfig.blockSizeVertical * 2.5),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal * 20,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal * 20,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal * 20,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal * 20,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
