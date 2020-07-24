import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login Page',
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  //used for single
  AnimationController _iconAnimationController;

  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.bounceIn);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black38,
      body: new Stack(
        fit: StackFit.expand, //to cover whole space
        children: <Widget>[
          //   new Image(
          //     image: new AssetImage("assets/harsh.png"),
          //     fit: BoxFit.cover,
          //     color: Colors.black54,
          //     colorBlendMode: BlendMode.darken,
          //   ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 100,
              ),
              new Form(
                child: new Theme(
                  data: new ThemeData(
                      primarySwatch: Colors.teal,
                      brightness: Brightness.dark,
                      inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                      ))),
                  child: new Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration:
                              new InputDecoration(labelText: "Enter Email"),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          decoration:
                              new InputDecoration(labelText: "Enter Password"),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(padding: EdgeInsets.only(top: 40.0)),
                        new MaterialButton(
                          height: 50.0,
                          minWidth: 110.0,
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: new Text("Login"),
                          onPressed: () => {},
                          splashColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ), //here container overlaps
    );
  }
}
