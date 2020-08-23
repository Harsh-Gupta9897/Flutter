import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Card(
              color: Colors.amber,
              child: Image.asset('images/harsh.png'),
              elevation: 20, //to give  shadow
            ),
          ),
          Container(
            height: 100,
            child: RaisedButton(
              onPressed: () {
                print("hello");
                var audio = AudioCache();
                audio.play('izajat.mp3');
              },
              child: Card(
                color: Colors.amber,
                child: Image.asset('images/harsh.png'),

                elevation: 20, //to give shadow
              ),
            ),
          ),
          Text("body"),
        ],
      ),
    ));
  }
}
