import 'package:testapp/constants.dart';
import 'package:gsheets/gsheets.dart';
import 'user_consume.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Networking {
  Networking() {
    init();
  }

  final GSheets _gsheets = GSheets(k_credentials);
  Spreadsheet _spreadsheet;
  Worksheet _workSheet;

  // nombre/id mapeado a los valores correspondientes
  // q seria una lista de instancias de UserConsume
  Map<String, List<UserConsume>> user_consume = {};

  List<charts.Color> chart_colors = [
    charts.ColorUtil.fromDartColor(Colors.red),
    charts.ColorUtil.fromDartColor(Colors.blue),
    charts.ColorUtil.fromDartColor(Colors.orange),
    charts.ColorUtil.fromDartColor(Colors.green),
  ];

  void init() async {
    try {
      _spreadsheet ??= await _gsheets.spreadsheet(k_spreadsheetId);
      _workSheet ??= await _spreadsheet.worksheetByTitle('test1');
      List data = await _workSheet.values.allRows(fromRow: 1);

      //get labels
      List<String> labels = [];
      for (var label in data[0]) {
        labels.add(label);
      }

      //get users
      Map<String, List<UserConsume>> user_data = {};
      for (int row = 1; row < data.length; row++) {
        String client = data[row][0];
        //get user values
        List<UserConsume> user_list = [];
        for (int col = 1; col < data[row].length; col++) {
          String label = labels[col];
          double consume = double.tryParse(data[row][col]);
          user_list.add(UserConsume(
            month: label,
            consume: consume,
          ));
        }
        double avg = user_list.map((m) => m.consume).reduce((a, b) => a + b) /
            user_list.length;
        double diff = user_list.map((m) => m.consume).reduce((a, b) => a - b);
        print(avg);
        print(diff);
        user_list.add(UserConsume(month: 'Avg', consume: avg));
        user_list.add(UserConsume(month: 'Diff', consume: diff));

        for (int i = 0; i < user_list.length; i++) {
          user_list[i].color = chart_colors[i % chart_colors.length];
        }
        user_data[client] = user_list;
      }

      user_consume = user_data;
      //print(user_consume);
    } catch (e) {
      print(e);
    }
  } // init()

  Map getData() {
    if (user_consume != null) {
      return user_consume;
    } else {
      print('data not ready');
      return user_consume;
    }
  }
}
