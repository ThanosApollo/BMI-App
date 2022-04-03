import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {this.icon, this.weight, this.weightFunction, this.dosomething});

  final IconData icon;
  final int weight;
  final int weightFunction;
  final Function dosomething;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Colors.white12,
      elevation: 15.0,
      onPressed: dosomething,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
