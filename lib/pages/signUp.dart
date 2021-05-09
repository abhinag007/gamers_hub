import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/onlyBack.dart';
import 'package:gamers_hub/pages/verificationCode.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:gamers_hub/styleguide/textstyle.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _number = '+91';
  var _phoneNumber;
  var _countrycode = '+91';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: appbarOnlyBack(context),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.blockSizeVertical,
                  ),
                  Text(
                    'Enter Your Mobile Number ',
                    style: textStyle(
                        fontSize: SizeConfig.blockSizeHorizontal * 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 3,
                  ),
                  Text(
                    'We will send you a Confirmation Code',
                    style: textStyle(
                      fontSize: SizeConfig.blockSizeHorizontal * 7,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical * 2,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 1,
                    child: FittedBox(
                      child: CountryCodePicker(
                        padding: EdgeInsets.only(left: 2),
                        dialogSize: Size(SizeConfig.screenWidth,
                            SizeConfig.screenWidth * 1.5),
                        dialogTextStyle: textStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                        showDropDownButton: true,
                        onChanged: (p) {
                          setState(() {
                            _countrycode = p.toString();
                            _number = '';
                            _number = _countrycode + _phoneNumber;
                          });
                        },
                        initialSelection: 'IN',
                        favorite: ['+39', 'FR', '+91', '+1'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                        showFlagMain: true,
                        textStyle: textStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        labelText: 'Phone Number',
                        hintStyle: textStyle(
                          fontSize: SizeConfig.blockSizeHorizontal * 5,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        labelStyle: textStyle(
                          fontSize: SizeConfig.blockSizeHorizontal * 5,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: SizeConfig.blockSizeHorizontal * 4,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      onChanged: (String value) {
                        setState(() {
                          _phoneNumber = value;
                          _number = '';
                          _number = _countrycode + value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 10,
              ),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  print(_number);
                  if (GetUtils.isPhoneNumber(_number) && (_number != null)) {
                    Get.to(VerificationUI(), arguments: _number);
                  } else {
                    Get.snackbar('Invalid Number', 'Please Enter Valid Number');
                  }
                },
                child: flatButton(
                    borderRadius: SizeConfig.blockSizeVertical * 20,
                    text: 'Next',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.blockSizeHorizontal * 5,
                    paddingHorizontal: SizeConfig.blockSizeVertical * 12,
                    paddingVertical: SizeConfig.blockSizeVertical * 2.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
