import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
//import 'package:gamers_hub/Shashwat/Page/pagee.dart';

Widget createAlertDialog(BuildContext context) {
  SizeConfig().init(context);
  return AlertDialog(
    backgroundColor: Colors.transparent,
    insetPadding: EdgeInsets.fromLTRB(0, 20, 0, 20),
    title: Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 30),
          margin: EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              // shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  "You are not a Registered user!  ",
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(0, 0),
                            blurRadius: 1.0,
                            color: Colors.black)
                      ],
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 15,
                width: 20,
              ),
              Align(
                alignment: Alignment.center,
                // ignore: deprecated_member_use
                child: Container(
                  //margin: EdgeInsets.all(10),
                  // width: 100,
                  // height: 10,
                  width: 273,
                  height: 64,

                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.red.shade500, Colors.pink.shade900],
                        begin: FractionalOffset.topRight,
                        end: FractionalOffset.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),

                      //  color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 29,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
