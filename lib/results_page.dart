import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpetention});

  final String bmiResult;
  final String resultText;
  final String interpetention;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Your result:',
              style: kResultStyle,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        resultText,
                        style: kStateStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kNumbersOnCards,
                      ),
                      Text(
                        interpetention,
                        textAlign: TextAlign.center,
                        style: kInterpetationStyle,
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => InputPage())));
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kLargeButtonText,
                ),
              ),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
