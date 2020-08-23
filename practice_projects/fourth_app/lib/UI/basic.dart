import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

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
        CarouselSlider(
          options: CarouselOptions(height: 400.0),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        )
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
