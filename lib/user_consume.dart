import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

// clase para guardar los datos del google sheet
// y crear los graficos

class UserConsume {
  UserConsume({@required this.month, @required this.consume, this.color});

  String month;
  double consume;
  charts.Color color;
}
