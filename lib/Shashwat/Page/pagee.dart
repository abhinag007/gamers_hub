import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gamers_hub/dialogBox/callDialog.dart';

// class DialogBox extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Dialog',
//       home: Dialog(),
//     );
//   }
// }

class DialogBox extends StatelessWidget {
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
                      // return createAlertDialogSignIn(context);
                      return textButton(
                          context,
                          "You are already registered previously so dont be super smart",
                          "Sign In");
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
