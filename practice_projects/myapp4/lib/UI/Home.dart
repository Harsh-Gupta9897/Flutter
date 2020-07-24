import 'package:flutter/material.dart';

myapp() {
  var x = Text(
    'App',
    textAlign: TextAlign.center,
    textDirection: TextDirection.ltr,
  );
  var url =
      "https://cdn.kalingatv.com/wp-content/uploads/2020/04/Mo-Odisha.jpg";
  var MyImage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );
  mypress() {
    print('something clicked');
  }

  var myemailbutton = IconButton(icon: Icon(Icons.email), onPressed: mypress);

  var mytopbar = AppBar(
    leading: Icon(Icons.account_circle),
    title: x,
    actions: <Widget>[
      Icon(Icons.access_alarm),
      myemailbutton,
    ],
    backgroundColor: Colors.transparent,
  );

  var design = MaterialApp(
    home: Scaffold(
      appBar: mytopbar,
      body: MyImage,
      bottomNavigationBar: BottomAppBar(
        child: Text("Hello"),
      ),
    ),
  );
  return design;
}
