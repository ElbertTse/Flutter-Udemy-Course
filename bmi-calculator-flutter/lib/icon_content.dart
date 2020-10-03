import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0);

class IconContent extends StatelessWidget {
  final IconData img;
  final String text;

  IconContent({@required this.img, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          img,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
