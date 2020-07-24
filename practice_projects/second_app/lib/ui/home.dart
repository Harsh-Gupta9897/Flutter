import 'package:flutter/material.dart';

myapp() {
  var appbar = AppBar(
    leading: Icon(Icons.home),
    title: Text("Hogo"),
    backgroundColor: Colors.cyan,
  );
  var url =
      "https://image.shutterstock.com/image-photo/autumn-forest-nature-vivid-morning-600w-766886038.jpg";
  //one row
  var Rows = Row(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(2.0),
      ),
      Container(
          width: 90,
          height: 200,
          // alignment: Alignment.bottomCenter,

          padding: EdgeInsets.all(0.8),
          child: Center(child: Text('Hello')),
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.darken,
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
            ),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(width: 8.0),
          )),
      Padding(
        padding: EdgeInsets.all(8.0),
      ),
      Container(
          width: 90,
          height: 200,
          // alignment: Alignment.bottomCenter,

          padding: EdgeInsets.all(0.8),
          child: Center(child: Text('Hello')),
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.darken,
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
            ),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(width: 8.0),
          )),
      Padding(
        padding: EdgeInsets.all(8.0),
      ),
      Container(
          width: 90,
          height: 200,
          // alignment: Alignment.bottomCenter,

          padding: EdgeInsets.all(0.8),
          child: Center(child: Text('Hello')),
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.darken,
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
            ),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(width: 8.0),
          )),
      Padding(
        padding: EdgeInsets.all(8.0),
      ),
      Container(
          width: 90,
          height: 200,
          // alignment: Alignment.bottomCenter,

          padding: EdgeInsets.all(0.8),
          child: Center(child: Text('Hello')),
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.darken,
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover,
            ),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(width: 8.0),
          )),
    ],
  );

  //using above row into column

  var body = Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.all(8.0)),
      Rows,
      Padding(padding: EdgeInsets.all(8.0)),
      Rows,
      Padding(padding: EdgeInsets.all(8.0)),
      Rows,
      Padding(padding: EdgeInsets.all(2.0)),
      Container(
        height: 102,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
        ),
        child: Center(
          child: Text(
            'This is a small demo of grid',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
    ],
  );

  return MaterialApp(
    home: Scaffold(
      appBar: appbar,
      body: body,
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: null),
    ),
  );
}
