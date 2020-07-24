import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
      title: 'Calculator App',
      theme: new ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}
