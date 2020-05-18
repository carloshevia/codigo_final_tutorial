import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:testapp/networking.dart';
import 'package:testapp/constants.dart';
import 'custom_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class StatsScreen extends StatefulWidget {
  static const String id = 'stats_screen';

  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;

  Networking networking;
  String client;
  Map<String, double> client_consume;
  bool showGraph = false;

  @override
  void initState() {
    super.initState();
    networking = Networking();
    getUser();
  }

  void getUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser);
      }
    } catch (e) {
      print(e);
    }
  }

  Map<String, double> getDataByName() {
    return networking.getData()[client];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Welcome Screen'),
        centerTitle: true,
        gradient: k_gradientAppBar,
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          showGraph
              ? CustomChart(waterConsume: client_consume)
              : SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      'No data',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              style: TextStyle(
                fontSize: 20,
              ),
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                client = value;
              },
              decoration: kInputDecoration.copyWith(hintText: 'Enter id'),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: CustomBotton(
                bottonText: 'Get Data',
                colour: Colors.lightBlueAccent,
                onPress: () async {
                  print('Go Pressed');
                  // pie chart receives Map<String,double>
                  setState(() {
                    client_consume = getDataByName();
                    if (client_consume != null) {
                      showGraph = true;
                      client_consume['Average'] =
                          (client_consume['current month'] +
                                  client_consume['previous month']) /
                              2;
                    } else
                      showGraph = false;
                  });
                },
              )
//            child: MaterialButton(
//              child: Text('Go'),
//              minWidth: 200,
//              height: 50,
//              elevation: 15,
//              color: Colors.white,
//            ),
              ),
        ],
      ),
    );
  }
}
