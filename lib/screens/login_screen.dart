import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../constants.dart';
import '../widgets/custom_button.dart';
import 'stats_screen.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //TODO connect to firebase
  final _auth = FirebaseAuth.instance;
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
        decoration: k_boxDecorationGradient,
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
              decoration:
                  kInputDecoration.copyWith(hintText: 'Enter your email'),
            ),
            //TODO sized box heigh 24
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
                print(password);
              },
              decoration:
                  kInputDecoration.copyWith(hintText: 'Enter your password'),
            ),
            //TODO sized box heigh 24
            CustomBotton(
              bottonText: 'Log in',
              colour: Colors.lightBlue,
              onPress: () async {
                try {
                  final user = await _auth.signInWithEmailAndPassword(
                      email: email.trim(), password: password.trim());
                  if (user != null) {
                    Navigator.pushNamed(context, StatsScreen.id);
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
      //body: ,
    );
  }
}
