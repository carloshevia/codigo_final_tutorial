import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:testapp/screens/login_screen.dart';
import 'registration_screen.dart';
import '../constants.dart';
import '../widgets/custom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        centerTitle: true,
        title: Text('Welcome Screen'),
        gradient: k_gradientAppBar,
      ),
      body: Container(
        decoration: k_boxDecorationGradient,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          // container takes same space as its child
          children: <Widget>[
            Icon(
              FontAwesomeIcons.handHoldingWater,
              size: 150.0,
              color: Colors.blueAccent,
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomBotton(
                    bottonText: 'Log in',
                    colour: Colors.lightBlue,
                    onPress: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                  ),
//                  CustomBotton(bottonText: 'Log In', colour: Colors.lightBlue),
                  CustomBotton(
                      bottonText: 'Register',
                      colour: Colors.blueAccent,
                      onPress: () {
                        Navigator.pushNamed(context, RegistrationScreen.id);
                      }),
//                  CustomBotton(
//                      bottonText: 'Register', colour: Colors.lightBlueAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
