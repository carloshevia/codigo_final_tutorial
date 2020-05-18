import 'package:testapp/networking.dart';

class DataManager {
  Networking _networking = Networking();
  Map<String, Map> client_consume = Map();
  //String request;

  void getInfo() {
    client_consume = _networking.getData();
    print(client_consume);
  }
}
