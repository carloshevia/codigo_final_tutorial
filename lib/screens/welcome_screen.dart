import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/rendering.dart';
import 'package:testapp/screens/login_screen.dart';
import 'package:testapp/screens/registration_screen.dart';
import 'custom_widgets.dart';
import 'package:testapp/constants.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String _animationName = 'Untitled';

  void dispose() {
    //controller.dispose();
    super.dispose();
  }

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
              child: Center(
                child: FlareActor(
                  'assets/water_loading.flr',
                  //animation: _animationName,
                ),
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
