import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:testapp/user_consume.dart';

class ChartCustom extends StatelessWidget {
  final List<UserConsume> data;
  bool chartType;
  ChartCustom({@required this.data, this.chartType});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<UserConsume, String>> series = [
      charts.Series(
        id: "Consumo de Agua",
        data: data,
        domainFn: (UserConsume series, _) => series.month,
        measureFn: (UserConsume series, _) => series.consume,
        colorFn: (UserConsume series, _) => series.color,
        labelAccessorFn: (UserConsume series, _) => series.consume.toString(),
      ),
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: chartType
                    ? charts.BarChart(
                        series,
                        animate: true,
                      )
                    : charts.PieChart(
                        series,
                        animate: true,
                        animationDuration: Duration(seconds: 1),
                        defaultRenderer: charts.ArcRendererConfig(
                          arcWidth: 100,
                          arcRendererDecorators: [
                            charts.ArcLabelDecorator(
                              labelPosition: charts.ArcLabelPosition.inside,
                            ),
                          ],
                        ),
                        behaviors: [
                          charts.DatumLegend(
                            outsideJustification:
                                charts.OutsideJustification.endDrawArea,
                            horizontalFirst: false,
                            desiredMaxRows: 2,
                            cellPadding:
                                EdgeInsets.only(right: 4.0, bottom: 4.0),
                            entryTextStyle: charts.TextStyleSpec(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
