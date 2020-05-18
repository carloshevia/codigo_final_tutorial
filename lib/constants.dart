import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

const k_credentials = r'''
{
  "type": "service_account",
  "project_id": "test-277405",
  "private_key_id": "81d54cbc7f6efa9e252cdb89fe4b204bd02052af",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC+TbwVmpd6bS9g\niNQpIPpEaNNDXM35/xG2U4DZcvoOCIFHZT9H8MrDIS0wYkRviB86eFm1iRRJAGll\nzx6hLW4j5IgK7jBLn35hIdQDK9P60ZHXIWCcfuusvWxqA/U/GS1bwDgDWw/63SDV\ng4LEFSWdWasJjQg3pmF+rEXn02ML/kyhDHuj2cbGTjAAdE61fl9pCsQ31ysQfsRp\nkSZfKsWk7sg/mgPDXtk5IeHgmUS9WZfO4CfI04lGlkkbie1oJfarFGUjxhqhS7On\nC0JjUAh8WRpjt6pLXd3h63vuGoCxAbJT7zQbptw9SV+lp4VnrkKTZGmHLDjXvAN/\n51FSMZi1AgMBAAECggEAVFJ/Z5czTYT5vC2EzKCXJB7KlYuWnRJfV8mSS0e98t/j\n4K3FJ2xTe7jEnC6+oijPpYnUPjL6MQqkqP7oVISby/2kJiu6bJfEWOezWKBf8kBP\n/eIFO/KlHMpmMmeEkKvoREJcz2fXIdI/jTwTgizYmOs1dSrvnDD1/Dn7U6h/t7z2\np1l/6mD59V6MWtiMvrxnY0PrjxQJtYOeLsJeDFW98eRCdpN9uxfkEfDlD3+64+kY\nOJ/F/RRZw8DACa3dzMeVKzogU0lYUmkqqyz+ycQS0m6p8xuyZUaYYwzz1dwpjQm+\nmqNW6u4mmHUIT8RBxzv23PJzvScTuyEWU5G5oSDnFQKBgQD1UEpjfRbAGx6skkYI\nUrdw+WFRg6/jJDE4QDwAz8ICRsdlEcuyfzpCZvx3MT9HQsNCR6CkpaDxmkAztq53\n8I2F+P6WGdsjhg0Xm1UNtd0Apg4KAN/3Lw09DWP84wmiZp23Nz/2wdl7IUZsMr6k\nZzPlGiDHnzeMqKjSuohp1n6GLwKBgQDGl/qnWu8sGOSVBer/NILEXtR4apS2ZZ0B\noLOZo7j3WTudy9HJw2R77zP/eTCEfHKPBuii+zBYiLUVbywpoysSnagTEOuhQI6n\n2xZObi4YYTdN+Yz0mBaAEvWUTLLzYoaBp4PhBXGlozZ9Ya3BfXg9W9fjrMcCFSHC\nRxN74TL6WwKBgQCqtog9+ePmJjlPcK+JxT5hQTpnRpQVJq+V7KWVDv99JBJIlHzD\np+Q8J30T2VKm3aASNNRnH9gDqgt5sWxyjRV/oQpSHIYyj2v2/KLQ2rmEZQqqDXfO\nhZDZ5sKpTrn6qRyiTrGVn8sf88UVMK8Yq7Uifu9G29cFbK2nkCW0OY9tAwKBgFef\nbuSwZp7aTODDv6/ih2AFR1HqFLt1khTJxvSfHFlmcbtp1qJjJ87W9+Zcnl+WWSVq\nMvLWSbqGdv+CEcY9TB/ml+XxrUV0qny9WdY5HvV6z2AEH4E8KZFQzDImtT5V1msW\nckWylTY0ETK5CmU46viHsXWvIg91K3QA0EP0VP3JAoGBAKm4fcmwgQE3MvENHYEO\nCmrIBPdlQ0zRZIaazeUCP2Tauicu0WXRL/Mt61TIw91nOOFw0mlBOLTqhE9QGPee\nfVZ2HZ2s6bm6npX7vFY19dPebQ5KMEG9z42M2eQK4kTfjhBdKpNgmX4LLtc1WCMD\ngidaRnH7OeLQfTFxD51+dgTW\n-----END PRIVATE KEY-----\n",
  "client_email": "test-88@test-277405.iam.gserviceaccount.com",
  "client_id": "110086718701896854300",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/test-88%40test-277405.iam.gserviceaccount.com"
}
''';

const k_spreadsheetId = '1ez2TO6jUCC9175HUBUZfDBbY3iO9IRUqhvjmPtmPgAk';

const List<Color> k_colorList = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.grey,
  Colors.orange,
  Colors.lightBlueAccent,
];

const kInputDecoration = InputDecoration(
  hintStyle: TextStyle(
    fontSize: 20,
    //fontWeight: FontWeight.bold,
  ),
  hintText: 'Enter value',
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const k_boxDecorationGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.1, 0.2, 0.4, 1],
    colors: [
      Colors.blue,
      Colors.lightBlue,
      Colors.lightBlueAccent,
      Colors.white70,
    ],
  ),
);

const k_gradientAppBar = LinearGradient(
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
    colors: [
      Color(0xb3e5fc),
      Colors.lightBlueAccent,
      Colors.lightBlue,
      Colors.blue,
    ]);
