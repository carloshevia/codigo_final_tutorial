import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../custom_widgets.dart';
import 'stats_screen.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Welcome Screen'),
        centerTitle: true,
        gradient: k_gradientAppBar,
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Container(
          decoration: k_boxDecorationGradient.copyWith(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.lightBlue,
              Colors.lightBlueAccent,
              Color(0xb3e5fc),
            ],
          )),
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
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration:
                    kInputDecoration.copyWith(hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              CustomBotton(
                bottonText: 'Log In',
                onPress: () async {
//                  setState(() {
//                    showSpinner = true;
//                  });
//                  try {
//                    final user = await _auth.signInWithEmailAndPassword(
//                        email: email.trim(), password: password.trim());
//                    if (user != null) {
                  Navigator.pushNamed(context, StatsScreen.id);
//                    }
//                  } catch (e) {
//                    print(e);
//                  }
//                  setState(() {
//                    showSpinner = false;
//                  });
                },
                colour: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
      //body: ,
    );
  }
}
