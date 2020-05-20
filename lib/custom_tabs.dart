import 'package:flutter/material.dart';
import 'custom_charts.dart';
import 'user_consume.dart';
import 'constants.dart';

class CustomTabs extends StatelessWidget {
  CustomTabs({@required this.data, @required this.chartType});
  final List<UserConsume> data;
  final bool chartType;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Consumo Mensual de Agua',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                ChartCustom(data: data, chartType: chartType),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
