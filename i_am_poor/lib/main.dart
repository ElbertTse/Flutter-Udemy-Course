import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: Text('I Am Poor'),
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Image(image: AssetImage('images/clown.png')),
        ),
      ),
    ),
  );
}

