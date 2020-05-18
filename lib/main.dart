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
      //the initial screen of the app
      initialRoute: WelcomeScreen.id,
      //first we define the screens of our app in a map
      // with the form { String: ScreenInstance()}
      //Then change hardcoded strings for static variables
      //for each of the screen classes
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        StatsScreen.id: (context) => StatsScreen(),
      },
    );
  }
}
