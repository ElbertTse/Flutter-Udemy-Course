import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main(){
  print("API KEY WAS REMOVED FROM THIS REPOSITORY. APP WILL NOT WORK.");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
