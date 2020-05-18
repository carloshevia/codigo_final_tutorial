import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:testapp/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'custom_widgets.dart';
import 'welcome_screen.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            //stops: [0.1, 0.3, 0.4, 0.9, 1],
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
                style: TextStyle(
                  fontSize: 20,
                ),
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration:
                    kInputDecoration.copyWith(hintText: 'Enter your password.'),
              ),
              SizedBox(
                height: 24.0,
              ),
              CustomBotton(
                bottonText: 'Register',
                onPress: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email.trim(), password: password.trim());
                    if (newUser != null) {
                      Navigator.pushNamed(context, WelcomeScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  }
                  setState(() {
                    showSpinner = false;
                  });
                },
                colour: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
