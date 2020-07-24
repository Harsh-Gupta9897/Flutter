import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, op = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      op = num1 + num2;
    });
  }

  void doSubstraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      op = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      op = num1 * num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      op = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      num1 = 0;
      num2 = 0;
      t1.text = '';
      t2.text = '';
      op = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Calcultor'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Output : $op",
                style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                )),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: 'enter First number'),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: 'enter Second number'),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.redAccent,
                  child: new Text('+'),
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  color: Colors.redAccent,
                  child: new Text('-'),
                  onPressed: doSubstraction,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.redAccent,
                  child: new Text('*'),
                  onPressed: doMultiplication,
                ),
                new MaterialButton(
                  color: Colors.redAccent,
                  child: new Text('/'),
                  onPressed: doDivision,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.redAccent,
                  child: new Text("Clear"),
                  onPressed: doClear,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
