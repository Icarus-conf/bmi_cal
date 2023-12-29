import 'package:bmi_cal/components/reusable_card.dart';
import 'package:bmi_cal/components/text_format.dart';
import 'package:flutter/material.dart';

import '../components/constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),
            Text(
              'Your Results',
              style: KReusltesTitleStyle,
            ),
            Expanded(
              child: ReusableCard(
                colour: inactiveCardColor,
                cardChild: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      PoppinsText(
                        text: resultText.toUpperCase(),
                        fontS: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF87F5FB),
                      ),
                      Text(
                        bmiResult,
                        style: kBmiTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25.0,
                          right: 25.0,
                        ),
                        child: PoppinsText(
                          text: interpretation,
                          fontS: 16,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: KbottomTitleStyle,
                  ),
                ),
                color: bottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomContainerHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
