import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gamers_hub/appbar/onlyBack.dart';
import 'package:gamers_hub/pages/tournament_games.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:get/get.dart';

class UserPersonality extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarOnlyBack(context),
      body: Container(
        color: Colors.white,
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Your Personality',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: SizeConfig.blockSizeHorizontal * 10,
                      shadows: [
                        Shadow(
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AutoSizeText(
                    'Choose Your Avatar',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: SizeConfig.blockSizeHorizontal * 7,
                      shadows: [
                        Shadow(
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(child: SvgPicture.asset('assets/icons/userLogo.svg')),
                  SizedBox(
                    height: 30,
                  ),
                  AutoSizeText(
                    'Write Something About Yourself',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: SizeConfig.blockSizeHorizontal * 6,
                      shadows: [
                        Shadow(
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(fontFamily: 'Poppin'),
                    keyboardType: TextInputType.multiline,
                    maxLines: 8,
                    decoration: new InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 1, color: Colors.red),
                      ),
                      helperText: 'Keep It Short',
                      hintText: 'Tell us about yourself',
                      labelText: 'Tell us about yourself',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () {
                        Get.offAll(Tournament_Games());
                      },
                      child: flatButton(
                          borderRadius: 250,
                          text: 'Next',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig.blockSizeHorizontal * 5,
                          paddingHorizontal:
                              SizeConfig.blockSizeHorizontal * 25,
                          paddingVertical: SizeConfig.blockSizeVertical * 2),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
