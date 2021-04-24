import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';

Widget textThenButton(context) {
  SizeConfig().init(context);
  return AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, top: 45, right: 20, bottom: 45),
          margin: EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "You are alread Registered User !",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                // ignore: deprecated_member_use
                child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

/* child: Center(
      child: FittedBox(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          width: SizeConfig.screenWidth * 0.7,
          height: SizeConfig.screenHeight * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 5.0,
              ),
            ],
            backgroundBlendMode: BlendMode.darken,
          ),
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.cover,
                child: Text(
                  'You are already Registered User !',
                  style: textStyle(
                      fontSize: SizeConfig.blockSizeHorizontal * 8,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              FlatButton(
                onPressed: null,
                child: flatButton(
                    borderRadius: 30,
                    text: 'Sign In',
                    paddingVertical: 15,
                    paddingHorizontal: 40,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.blockSizeHorizontal * 8,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    ),*/
