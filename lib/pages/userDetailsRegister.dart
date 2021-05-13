import 'package:flutter/material.dart';
import 'package:gamers_hub/pages/userPersonality.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:get/get.dart';

class UserDetailsRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter Your Details",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: SizeConfig.blockSizeVertical * 6,
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
                    height: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          labelText: '* Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          labelText: '* Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: '* Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'Re-Enter Your Password',
                          labelText: '* Re-Enter Your Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email ID',
                          labelText: '* Email ID',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Center(
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () {
                        Get.to(UserPersonality());
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
                    height: 20,
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
