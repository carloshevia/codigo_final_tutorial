import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const k_credentials = '';

const k_spreadsheetId = '';

const k_color_water = Color(0xFF254F68);

const List<Color> k_colorList = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.grey,
  Colors.orange,
  Colors.lightBlueAccent,
];

const kInputDecoration = InputDecoration(
  hintStyle: k_textFieldsStyle,
  hintText: 'Enter value',
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const k_boxDecorationGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.1, 0.2, 0.4, 1],
    colors: [
      Colors.blue,
      Colors.lightBlue,
      Colors.lightBlueAccent,
      Colors.white70,
    ],
  ),
);

const k_gradientAppBar = LinearGradient(
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  colors: [
    Color(0xb3e5fc),
    Colors.lightBlueAccent,
    Colors.lightBlue,
    Colors.blue,
  ],
);

const k_textFieldsStyle = TextStyle(
  fontSize: 20,
  color: Colors.white,
);

const k_notData = SizedBox(
  height: 50,
  child: Center(
    child: Text(
      'No data',
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

const k_icon = Expanded(
  child: Icon(
    FontAwesomeIcons.handHoldingWater,
    color: Colors.blueAccent,
    size: 150,
  ),
);
