import 'package:flutter/material.dart';
import 'constants.dart';

// ignore: camel_case_types
class genderCards extends StatelessWidget {
  genderCards({@required this.genderIcon, @required this.text});

  final genderIcon;
  final text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(text, style: kLabelTextStyle)
      ],
    );
  }
}
