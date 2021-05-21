import 'package:flutter/material.dart';
import 'package:gamers_hub/appbar/commonAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';

// ignore: must_be_immutable
class Rules extends StatefulWidget {
  bool check;

  Rules(this.check);

  @override
  _RulesState createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  String text1 =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl sed nisl nunc, ultricies donecodio mi. Lectus lacus dui convallisvitae interdum augue commodo sollicitudin cras. Bibendum diam at amet nulla risus sed dolor molestie faucibus. Ultricies pulvinar malesuada adipiscing tortor eu pulvinar urna sagittis congue.";

  BottomDrawer bd = BottomDrawer();
  bool check;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check = widget.check;
  }

  @override
  Widget build(BuildContext context) {
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        // ignore: deprecated_member_use
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
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      2, 2), // changes position of shadow
                                ),
                              ],
                              gradient: check == true
                                  ? LinearGradient(colors: [
                                      const Color(0xffF64524),
                                      const Color(0xffAC0D58),
                                    ])
                                  : LinearGradient(colors: [
                                      const Color(0xffE7E3E3),
                                      const Color(0xffE7E3E3)
                                    ]),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: FittedBox(
                              child: Text(
                                'Instruction',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  color: check == true
                                      ? Colors.white
                                      : Colors.black,
                                ),
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
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(
                                      2, 2), // changes position of shadow
                                ),
                              ],
                              gradient: check == false
                                  ? LinearGradient(colors: [
                                      const Color(0xffF64524),
                                      const Color(0xffAC0D58),
                                    ])
                                  : LinearGradient(colors: [
                                      const Color(0xffE7E3E3),
                                      const Color(0xffE7E3E3)
                                    ]),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: FittedBox(
                              child: Text(
                                'Game Rule',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                  color: check == false
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.blockSizeHorizontal * 4),
                        child: check == true
                            ? Text(
                                text1,
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 5),
                              )
                            : Text(
                                "Game Rule Text",
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 5),
                              ),
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
