import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color myColor;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.myColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress(); // this is passed to the constructor.
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          //gives a rounded corner to our box
          color: myColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
