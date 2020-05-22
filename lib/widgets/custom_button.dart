import 'package:flutter/material.dart';

// custom button
class CustomBotton extends StatelessWidget {
  CustomBotton(
      {@required this.bottonText, this.onPress, @required this.colour});

  final String bottonText;
  final Function onPress;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          elevation: 5.0,
          color: colour,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            minWidth: 200,
            height: 25,
            onPressed: onPress,
            child: Text(
              bottonText,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
