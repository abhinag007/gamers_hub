import 'package:flutter/material.dart';
import 'package:gamers_hub/dialogBox/dialogIconThenText.dart';
import 'package:gamers_hub/dialogBox/dialogTextThenButton.dart';

// ignore: missing_return
Widget textButton(BuildContext context, var text, var buttonText) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        // return createAlertDialogSignIn(context);
        return dialogTextThenButton(context, "$text", "$buttonText");
      });
}

Widget iconText(BuildContext context, var text) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        // return createAlertDialogSignIn(context);
        return dialogIconThenText(context, "$text");
      });
}
