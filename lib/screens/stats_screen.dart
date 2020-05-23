import 'package:flutter/material.dart';
import '../networking.dart';
import '../constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import '../user_consume.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_tabs.dart';

class StatsScreen extends StatefulWidget {
  static const String id = 'stats_screen';

  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  final _auth = FirebaseAuth.instance;
  Networking networking;
  String client;
  bool showGraph = false;
  List<UserConsume> data;

  @override
  void initState() {
    networking = Networking();
    //print(networking.getData());
    super.initState();
  }

  List<UserConsume> getDataByName() {
    return networking.getData()[client];
  }

  @override
  Widget build(BuildContext context) {
    // DefaultTabController widget para olvidarnos
    // de implementar
    //
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: k_color_water,
        appBar: GradientAppBar(
          title: Text('Tutorial'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () async {
                await _auth.signOut();
                Navigator.pop(context);
              },
            )
          ],
          gradient: k_gradientAppBar,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info)),
              Tab(icon: Icon(Icons.pie_chart)),
              Tab(icon: Icon(Icons.table_chart)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // TODO query data y mostrar diferencia entre meses
                  showGraph
                      ? Padding(
                          padding: EdgeInsets.all(30),
                          child: Text(
                            data.last.consume >= 0
                                ? 'Consumió +${data.last.consume.abs()} litros que el mes pasado'
                                : 'Consumió -${data.last.consume.abs()} litros que el mes pasado',
                            style: k_textFieldsStyle,
                          ),
                        )
                      : k_notData,
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: TextField(
                      style: k_textFieldsStyle,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        client = value;
                      },
                      decoration:
                          kInputDecoration.copyWith(hintText: 'Enter id'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: CustomBotton(
                      bottonText: 'Get Data',
                      colour: Colors.lightBlueAccent,
                      onPress: () async {
                        print('Go Pressed');
                        setState(() {
                          data = getDataByName();

                          if (data != null) {
                            showGraph = true;
                          } else {
                            showGraph = false;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Tab(
                child: showGraph
                    ? CustomTabs(data: data, chartType: false)
                    : k_notData),
            Tab(
                child: showGraph
                    ? CustomTabs(data: data, chartType: true)
                    : k_notData),
          ],
        ),
      ),
    );
  }
}
