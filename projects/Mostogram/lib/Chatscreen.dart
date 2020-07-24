import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(
        color: Colors.blueGrey, 
        ),
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 8.0), //it provides for both horizontaland vertical
        child: Row(
          children: <Widget>[
            Flexible(
            child: TextField(
          decoration: new InputDecoration.collapsed(hintText: "Send a Message"),
          controller: _textController,
          onSubmitted: _handleSubmitted,
              ),
            ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal:  4.0),
            child: IconButton(
              icon: Icon(Icons.send),
              onPressed: ()=> _handleSubmitted(_textController.text),
              ),
          )
          ]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _textComposerWidget();
  }
}
