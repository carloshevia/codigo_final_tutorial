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
  //TODO crear clase para guardar datos de googlesheet
  //TODO crear mapa de String/List<ClaseGSheetDatos>
//  Map<String, List<UserConsume>> user_consume = {};

  //TODO crear colores para los graficos
//  List<charts.Color> chart_colors = [
//    charts.ColorUtil.fromDartColor(Colors.red),
//    charts.ColorUtil.fromDartColor(Colors.blue),
//    charts.ColorUtil.fromDartColor(Colors.orange),
//    charts.ColorUtil.fromDartColor(Colors.green),
//  ];

  void init() async {
    //TODO conectar con google sheet y extraer datos
//    try {
    _spreadsheet ??= await _gsheets.spreadsheet(k_spreadsheetId);
    _workSheet ??= await _spreadsheet.worksheetByTitle('test1');
    List data = await _workSheet.values.allRows(fromRow: 1);

    //TODO guardar nombre de columnas
//      List<String> labels = [];
//      for (var label in data[0]) {
//        labels.add(label);
//      }

    //TODO guardar datos correspondientes

    Map<String, List<UserConsume>> user_data = {}; //Map para retornar con datos
    //iterar por cada usuario
//      for (int row = 1; row < data.length; row++) {
//        String client = data[row][0];

    List<UserConsume> user_list = []; //List con valores de cada usuario
    // guardar valores de cada usuario
//        for (int col = 1; col < data[row].length; col++) {
//          String label = labels[col];
//          double consume = double.tryParse(data[row][col]);
//          user_list.add(UserConsume(
//            month: label,
//            consume: consume,
//          ));
//        }

    //TODO agrega Avg. y Dif. a la lista de datos de cada usuario
    // Agregar average y diferencia de acueurdo a los datos ya obtenidos
//        double avg = user_list.map((m) => m.consume).reduce((a, b) => a + b) /
//            user_list.length;
//        double diff = user_list.map((m) => m.consume).reduce((a, b) => a - b);
//        user_list.add(UserConsume(month: 'Avg', consume: avg));
//        user_list.add(UserConsume(month: 'Diff', consume: diff));

    //TODO agregar color para cada valor (columnas)
//        for (int i = 0; i < user_list.length; i++) {
//          user_list[i].color = chart_colors[i % chart_colors.length];
//        }

    // luego colectar los datos de cada usuario agregar al mapa
//        user_data[client] = user_list;
//      }//outer for

//      user_consume = user_data; // asignar a la variable q vamos a retornar
    //print(user_consume);
//    }//try
//    catch (e) {
//      print(e);
//    }
  } // init()

  //retornar map
//  Map getData() {
//    if (user_consume != null) {
//      return user_consume;
//    } else {
//      print('data not ready');
//      return user_consume;
//    }
//  }
}
