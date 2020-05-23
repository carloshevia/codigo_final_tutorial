import 'package:flutter/material.dart';
import 'screens/registration_screen.dart';
import 'screens/stats_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(Tutorial());
}

class Tutorial extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //the initial screen of the app
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        StatsScreen.id: (context) => StatsScreen(),
      },
    );
  }
}
