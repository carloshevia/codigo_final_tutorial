import 'package:flutter/material.dart';
import 'package:testapp/screens/registration_screen.dart';
import 'package:testapp/screens/login_screen.dart';

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
      backgroundColor: Colors.green, // to analyze the layout
      appBar: AppBar(
        //TODO GradientAppBar, same with gradiente: k_gradientAppBar
        title: Text('Welcome Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          //TODO crossAlignment-stretch and mainAlignment-center
          // container takes same space as its child
          children: <Widget>[
            // TODO k_icon,
            // TODO boton personalizado
            MaterialButton(
              child: Text('Log In'),
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                //TODO cambiar hardcoded string
                Navigator.pushNamed(context, 'login_screen');
              },
              color: Colors.red,
            ),
            MaterialButton(
              child: Text('Register'),
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                Navigator.pushNamed(context, 'registration_screen');
              },
              color: Colors.yellow,
            ),
            //TODO sized box - height 10
          ],
        ),
      ),
    );
  }
}
