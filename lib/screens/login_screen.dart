import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../constants.dart';
import '../widgets/custom_button.dart';
import 'stats_screen.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class LoginScreen extends StatefulWidget {
  //TODO static string id
//  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //TODO connect to firebase
//  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Login Screen'),
        centerTitle: true,
        gradient: k_gradientAppBar,
      ),
      body: Container(
        //TODO decoracion del contenedor
//        decoration: k_boxDecorationGradient
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              style: TextStyle(
                fontSize: 20,
              ),
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
//              decoration:
//                  kInputDecoration.copyWith(hintText: 'Enter your email'),
            ),
            //TODO sized box heigh 24
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
//              decoration:
//                  kInputDecoration.copyWith(hintText: 'Enter your password'),
            ),
            //TODO sized box heigh 24
            MaterialButton(
              child: Text('Log In'),
              minWidth: 200.0,
              height: 40.0,
              onPressed: () async {
//                  try {
//                    final user = await _auth.signInWithEmailAndPassword(
//                        email: email.trim(), password: password.trim());
//                    if (user != null) {
                Navigator.pushNamed(context, StatsScreen.id);
//                    }
//                  } catch (e) {
//                    print(e);
//                  }
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
      //body: ,
    );
  }
}
