import 'package:testapp/constants.dart';
import 'package:gsheets/gsheets.dart';

class Networking {
  Networking() {
    init();
  }

  final GSheets _gsheets = GSheets(k_credentials);
  Spreadsheet _spreadsheet;
  Worksheet _workSheet;
  Map<String, Map> client_consume = Map();

  void init() async {
    try {
      _spreadsheet ??= await _gsheets.spreadsheet(k_spreadsheetId);
      _workSheet ??= await _spreadsheet.worksheetByTitle('test1');
      List data = await _workSheet.values.allRows(fromRow: 1);

      if (data.isNotEmpty) {
        print('not null');
        //print('data $data');
      } else {
        print('Unable to retrieve data');
      }

      //get labels
      List<String> labels = [];
      for (var label in data[0]) {
        labels.add(label);
      }

      //get clients
      Map<String, Map> clients_data = Map();
      for (int row = 1; row < data.length; row++) {
        String client = data[row][0];
        //print(client);
        Map<String, double> clients_consume = Map();
        for (int col = 1; col < data[row].length; col++) {
          //print('${labels[col]}: ${data[row][col]}');
          String label = labels[col];
          double consume = double.tryParse(data[row][col]);
          clients_consume[label] = consume;
        }
        clients_data[client] = clients_consume;
      }
      client_consume = clients_data;
    } catch (e) {
      print(e);
    }
  } // init()

  Map getData() {
    if (client_consume != null) {
      return client_consume;
    } else {
      print('data not ready');
      return client_consume;
    }
  }
}
