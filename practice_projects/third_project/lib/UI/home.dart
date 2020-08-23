import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

myApp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.amber);
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hogo23'),
      ),
    ),
  );
}
