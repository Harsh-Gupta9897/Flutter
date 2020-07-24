import 'package:flutter/material.dart';
import 'Chatscreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mostogram'),
      ),
      body: ChatScreen(),
    );
  }
}
