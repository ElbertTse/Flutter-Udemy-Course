import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Need stateless widget to use hot reload. type stless so flutter makes it
 // containers take up as much space as possible by default. is a single child widget
  // keeps stuff out of bezel of device

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(           
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.only(left: 30.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Text('Hello'),
          ),
        ),
      ),
    );
  }
}
