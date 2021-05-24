import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/onlyBack.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/dialogBox/callDialog.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/button.dart';
import 'package:get/get.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  BottomDrawer bd = BottomDrawer();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appbarOnlyBack(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallet',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: SizeConfig.blockSizeVertical * 4,
                      shadows: [
                        Shadow(
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    maxLines: 2,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Current Balance: \$5000",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: 'Enter Your UPI ID',
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
                              hintText: 'Enter Amount',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              onPressed: () {
                                iconText(context, "Done");
                                Future.delayed(Duration(seconds: 1), () {
                                  Get.off(Wallet());
                                });
                              },
                              child: flatButton(
                                  borderRadius:
                                      SizeConfig.blockSizeVertical * 20,
                                  text: 'Transfer',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.blockSizeHorizontal * 5,
                                  paddingHorizontal:
                                      SizeConfig.blockSizeVertical * 7,
                                  paddingVertical:
                                      SizeConfig.blockSizeVertical * 2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bd,
        ],
      ),
    );
  }
}
