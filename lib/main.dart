import 'package:flutter/material.dart';

void main() => runApp(FlutFlix());

class FlutFlix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutFlix',
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text('FlutFlix'),
        ),
      ),
    );
  }
}
