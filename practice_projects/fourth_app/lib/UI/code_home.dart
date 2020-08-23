import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:carousel_slider/carousel_slider.dart';

var url =
    "https://avatars3.githubusercontent.com/u/52826690?s=400&u=cc6bde97ffd1e10d85a8b890bafdbb3d40a61fc9&v=4";

var mybody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    // color: Colors.grey.shade900,
    margin: EdgeInsets.all(11.0),
    child: Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        Container(
          height: 200,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Harsh Gupta',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Hello'),
                ],
              )
            ],
          ),
          margin: EdgeInsets.only(top: 50, left: 30),
          decoration: BoxDecoration(
            color: Colors.amber.shade400,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black26,
              width: 2,
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(url)),
            color: Colors.amber,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.amber,
              width: 2,
            ),
          ),
        ),
      ],
    ));

toastshow() {
  Fluttertoast.showToast(
      msg: "Harsh Gupta",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.amber,
      textColor: Colors.white,
      fontSize: 16.0);
}

myclass_app() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(icon: Icon(Icons.email), onPressed: toastshow),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: mybody,
    ),
  );
}
