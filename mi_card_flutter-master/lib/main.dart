import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Need stateless widget to use hot reload. type stless so flutter makes it
// containers take up as much space as possible by default. is a single child widget
// keeps stuff out of bezel of device
// determines spacing, doesnt work with main axis size

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                //child: Text('Container 1'),
              ),
              SizedBox(width: 20.0),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.yellow,
                        height: 100.0,
                        width: 100.0,
                      ),
                      Container(
                        color: Colors.green,
                        height: 100.0,
                        width: 100.0,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              Container(

                width: 100.0,
                height: 100.0,
                color: Colors.blue,
                //child: Text('Container 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
