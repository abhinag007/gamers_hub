import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/commonAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';

// ignore: must_be_immutable
class Instruct extends StatefulWidget {
  bool check;

  Instruct(this.check);

  @override
  _InstructState createState() => _InstructState();
}

class _InstructState extends State<Instruct> {
  String text1 =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl sed nisl nunc, ultricies donecodio mi. Lectus lacus dui convallisvitae interdum augue commodo sollicitudin cras. Bibendum diam at amet nulla risus sed dolor molestie faucibus. Ultricies pulvinar malesuada adipiscing tortor eu pulvinar urna sagittis congue.";

  BottomDrawer bd = BottomDrawer();

  @override
  Widget build(BuildContext context) {
    bool check = widget.check;
    SizeConfig().init(context);
    return Scaffold(
      appBar: appbarCommon(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              check = true;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.blockSizeHorizontal * 8,
                                vertical: SizeConfig.blockSizeVertical * 2),
                            decoration: BoxDecoration(
                                color: check == true ? Colors.red : Colors.grey,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              check = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.blockSizeHorizontal * 8,
                                vertical: SizeConfig.blockSizeVertical * 2),
                            decoration: BoxDecoration(
                                color: (check == false)
                                    ? Colors.redAccent
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              'Instruction',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
