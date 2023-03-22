import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prj2/calculator_brain.dart';
import 'package:prj2/screens/input_screen.dart';
import 'package:prj2/utils/constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiBrain});

  CalculatorBrain bmiBrain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            child: Center(
                child: Text(
              "Your Result",
              style: ktitleTextStyle,
            )),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiBrain.bmiResult(),
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiBrain.bmiResultText(),
                    style: kbmiTextStyle,
                  ),
                  Text(
                    bmiBrain.bmiDescription(),
                    style: kbodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: kbottomContainerColour,
            child: Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}
