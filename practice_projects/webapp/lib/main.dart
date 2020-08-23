import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

mydata() async {
  var url = 'http://192.168.43.22/';
  var url1 = 'http://192.168.43.22/cgi-bin/date.py';
  // var r = http.get(url);
  // r.then((value) => print(value.body));
  var r = await http.get(url1);
  var sc = r.statusCode;
  var x = r.body;
  print(sc);
  print(x);
}

mybody() {
  return Center(
    child: RaisedButton(
      onPressed: mydata,
      child: Text("click on me"),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Web App'),
      ),
      body: mybody(),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: null),
    ));
  }
}
