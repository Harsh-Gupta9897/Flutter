import 'package:flutter/material.dart';

myapp1() {
  var appbar = AppBar(
    leading: Icon(Icons.home),
    title: Text("Hogo"),
    backgroundColor: Colors.amberAccent,
  );
  var body = Center(
      child: Container(
    height: 220,
    width: 300,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Harsh Gupta",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(20.0),
    ),
  ));

  return MaterialApp(
    home: Scaffold(
      appBar: appbar,
      body: body,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
        backgroundColor: Colors.amberAccent,
      ),
    ),
  );
}
