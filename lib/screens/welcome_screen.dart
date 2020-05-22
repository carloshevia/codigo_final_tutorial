import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import '../constants.dart';
import '../widgets/custom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatefulWidget {
  //TODO static string id
//  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      //TODO GradientAppBar k_cont
      appBar: AppBar(
        title: Text('Welcome Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.red, //remove after giving decoration
        //TODO background color gradient
//        decoration: k_boxDecorationGradient,
        child: Column(
          //TODO crossAlignment-stretch and mainAlignment-center
          // container takes same space as its child
          children: <Widget>[
            // TODO k_icon, (esta en constantes)
            Icon(FontAwesomeIcons.handHoldingWater),
            //TODO sized box - height 50
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //TODO CustomButton
                  MaterialButton(
                    child: Text('Log In'),
                    minWidth: 200.0,
                    height: 40.0,
                    color: Colors.red,
                  ),
//                  CustomBotton(bottonText: 'Log In', colour: Colors.lightBlue),
                  //TODO sized box - height 25

                  //TODO CustomButton
                  MaterialButton(
                    child: Text('Register'),
                    minWidth: 200.0,
                    height: 40.0,
                    color: Colors.red,
                  ),
//                  CustomBotton(
//                      bottonText: 'Register', colour: Colors.lightBlueAccent),
                ],
              ),
            ),
            //TODO sized box - height 10
          ],
        ),
      ),
    );
  }
}
