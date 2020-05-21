import 'package:flutter/material.dart';
import 'package:testapp/screens/registration_screen.dart';
import 'package:testapp/screens/stats_screen.dart';
import 'package:testapp/screens/welcome_screen.dart';
import 'package:testapp/screens/login_screen.dart';

void main() {
  runApp(Tutorial());
}

class Tutorial extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO remplazar hardcoded routes strings con static variables
      //the initial screen of the app
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'login_screen': (context) => LoginScreen(),
        'stats_screen': (context) => StatsScreen(),
      },
    );
  }
}
