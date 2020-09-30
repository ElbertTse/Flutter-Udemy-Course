import 'package:flutter/material.dart';
// home is where stuff starts
// center takes a child

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          )
        ), // want image from widget class
      ),
    ),
  );
}
