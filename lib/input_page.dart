import 'package:BMICalculator/gender_card.dart';
import 'package:BMICalculator/reusablecard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const cardBackgroundColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: cardBackgroundColor,
                    cardChild: GenderCard(
                      genderIcon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardBackgroundColor,
                    cardChild: GenderCard(
                      genderIcon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: cardBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: cardBackgroundColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
