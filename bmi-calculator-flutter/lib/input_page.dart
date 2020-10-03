import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 80.0;
const Color activeColor = Color(0xFF1D1E33);
const Color inactiveColor = Color(0xFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);
enum Gender{female, male}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: (){ // defining our function here so we can pass to reusable card
                      setState(() {
                        selected = Gender.male;
                      });
                    },
                    myColor: selected == Gender.male ? activeColor : inactiveColor,
                    cardChild: IconContent(
                      img: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState((){
                        selected = Gender.female;
                      });
                    },
                    myColor: selected == Gender.female ? activeColor : inactiveColor,
                    cardChild: IconContent(
                      img: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(myColor: activeColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(myColor: activeColor),
                ),
                Expanded(
                  child: ReusableCard(myColor: activeColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
