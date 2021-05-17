import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamers_hub/appbar/commonAppbar.dart';
import 'package:gamers_hub/common/bottom_drawer.dart';
import 'package:gamers_hub/dialogBox/callDialog.dart';
import 'package:gamers_hub/pages/tournament_games.dart';
import 'package:gamers_hub/responsiveUI/sizeConfig.dart';
import 'package:gamers_hub/styleguide/color.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';

class ScheduleGame extends StatefulWidget {
  @override
  _ScheduleGameState createState() => _ScheduleGameState();
}

class _ScheduleGameState extends State<ScheduleGame> {
  final List<String> items = <String>['Free Fire', 'Pubg', 'Fortinite'];
  String selectedItem;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    BottomDrawer bd = BottomDrawer();
    bool value = true;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appbarCommon(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Schedule Game',
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
                        children: [
                          SizedBox(height: 20),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButton<String>(
                                  icon: Icon(
                                    Icons.arrow_drop_down_sharp,
                                  ),
                                  underline: SizedBox(),
                                  hint: Text('Select a value'),
                                  value: selectedItem,
                                  isExpanded: true,
                                  onChanged: (String string) {
                                    setState(() => selectedItem = string);
                                  },
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'poppins'),
                                  items: items.map((String item) {
                                    return DropdownMenuItem<String>(
                                      child: Text('$item'),
                                      value: item,
                                    );
                                  }).toList(),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              DateTimePicker(
                                type: DateTimePickerType.dateTimeSeparate,
                                dateMask: 'd MMM, yyyy',
                                initialValue: DateTime.now().toString(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(
                                    DateTime.now().year,
                                    DateTime.now().month,
                                    DateTime.now().day + 7),
                                icon: Icon(Icons.event),
                                dateLabelText: 'Date',
                                timeLabelText: "Hour",
                                onChanged: (val) => print(val),
                                validator: (val) {
                                  print(val);
                                  return null;
                                },
                                onSaved: (val) => print(val),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: 'Number of Players',
                                  labelText: '* Number of Players',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: 'Winning Price',
                                  labelText: '* Name',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: 'Room Name',
                                  labelText: '* Room Name',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: 'Room Password',
                                  labelText: '* Room Password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Description',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 22,
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                style: TextStyle(fontFamily: 'Poppin'),
                                keyboardType: TextInputType.multiline,
                                maxLines: 8,
                                decoration: new InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    borderSide:
                                        BorderSide(width: 1, color: Colors.red),
                                  ),
                                  helperText: 'Keep It Short',
                                  hintText: 'Tell a message to your buddies',
                                  labelText: 'Tell a message to your buddies',
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Remainder',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CheckboxListTile(
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            title: Text("By Mail"),
                                            dense: true,
                                            value: value,
                                            onChanged: (bool val) {
                                              value = val;
                                            }),
                                        CheckboxListTile(
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            title: Text("By SMS"),
                                            dense: true,
                                            value: value,
                                            onChanged: (bool val) {
                                              value = val;
                                            }),
                                        // Text("By Mail"),
                                        // Text("By SMS"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              CheckboxListTile(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 2),
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  title:
                                      Text("You must consider this seriously."),
                                  value: value,
                                  onChanged: (bool val) {
                                    value = val;
                                  }),
                              SizedBox(
                                height: 5,
                              ),
                              CheckboxListTile(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 2),
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  title:
                                      Text("Read all important Instructions."),
                                  value: value,
                                  onChanged: (bool val) {
                                    value = val;
                                  }),
                              SizedBox(
                                height: 25,
                              ),
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: appGradient,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: SliderButton(
                                    dismissible: false,
                                    backgroundColor: Colors.transparent,
                                    shimmer: false,
                                    action: () {
                                      iconText(context, "Done");
                                      Future.delayed(Duration(seconds: 1), () {
                                        Get.offAll(Tournament_Games());
                                      });
                                    },
                                    label: Text(
                                      "Slide to confirm",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'poppins',
                                          fontSize: 17),
                                    ),
                                    icon: Text(
                                      ">",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 44,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
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
