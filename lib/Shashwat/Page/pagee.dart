import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/Shashwat/Page/SigninDialog.dart';
import 'package:gamers_hub/Shashwat/Page/doneDialog.dart';
import 'package:gamers_hub/Shashwat/Page/groupCreatedDialog.dart';
import 'package:gamers_hub/Shashwat/Page/responsiveDialog.dart';
import 'package:gamers_hub/Shashwat/Page/signupDialog.dart';
import 'package:gamers_hub/Shashwat/Page/teamDialog.dart';
import 'package:gamers_hub/dialogBox/textThenButton.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:gamers_hub/styleguide/textstyle.dart';
import 'package:gamers_hub/Shashwat/Page/SigninDialog.dart';

class DialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog',
      home: Dialog(),
    );
  }
}

class Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('press'),
            FlatButton(
              onPressed: () {
                return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return doneDialog(context);
                    });
              },
              child: Text(
                'Dialog',
                style: TextStyle(fontFamily: 'poppins'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
