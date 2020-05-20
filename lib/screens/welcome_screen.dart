import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/rendering.dart';
import 'package:testapp/screens/login_screen.dart';
import 'package:testapp/screens/registration_screen.dart';
import 'package:testapp/custom_widgets.dart';
import 'package:testapp/constants.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
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
        title: Text('Welcome Screen'),
        centerTitle: true,
        gradient: k_gradientAppBar,
      ),
      body: Container(
        decoration: k_boxDecorationGradient,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Icon(
                FontAwesomeIcons.handHoldingWater,
                color: Colors.blueAccent,
                size: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  CustomBotton(
                    bottonText: 'Log In',
                    onPress: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    colour: Colors.lightBlueAccent,
                  ),
                  CustomBotton(
                    bottonText: 'Register',
                    onPress: () {
                      Navigator.pushNamed(context, RegistrationScreen.id);
                    },
                    colour: Colors.blueAccent,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
