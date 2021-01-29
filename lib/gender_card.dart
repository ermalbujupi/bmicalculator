import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class GenderCard extends StatelessWidget {
  final IconData genderIcon;
  final String text;

  GenderCard({this.genderIcon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            genderIcon,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            text,
            style: labelTextStyle,
          ),
        ],
      ),
    );
  }
}
