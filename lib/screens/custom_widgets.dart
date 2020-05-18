import 'package:pie_chart/pie_chart.dart';
import 'package:testapp/constants.dart';
import 'package:flutter/material.dart';

// this is the pir chart
class CustomChart extends StatelessWidget {
  CustomChart({@required this.waterConsume});

  final Map<String, double> waterConsume;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: PieChart(
        dataMap: waterConsume,
        animationDuration: Duration(milliseconds: 800),
        chartLegendSpacing: 32.0,
        chartRadius: MediaQuery.of(context).size.width / 2.7,
        showChartValuesInPercentage: true,
        showChartValues: true,
        showChartValuesOutside: false,
        chartValueBackgroundColor: Colors.grey[200],
        colorList: k_colorList,
        showLegends: true,
        legendPosition: LegendPosition.right,
        decimalPlaces: 1,
        showChartValueLabel: true,
        initialAngle: 0,
        chartValueStyle: defaultChartValueStyle.copyWith(
          color: Colors.blueGrey[900].withOpacity(0.9),
        ),
        chartType: ChartType.disc,
      ),
    );
  }
}

// this is a custom button
class CustomBotton extends StatelessWidget {
  CustomBotton(
      {@required this.bottonText, this.onPress, @required this.colour});

  final String bottonText;
  final Function onPress;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            bottonText,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
