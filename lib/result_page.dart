import 'package:bmi_calc_app/constants.dart';
import 'package:flutter/material.dart';
import 'calculation_btn.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {

  final String interpretation;
  final String bmiResult;
  final String resultText;

  ResultPage({required this.interpretation, required this.bmiResult, required this.resultText});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: activeContainerColour,
        automaticallyImplyLeading: false,
      ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: textTitleStyle),
            )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: activeContainerColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(), style: resultTextStyle),
                    Text(bmiResult, style: BMITextStyle),
                    Text(interpretation,
                        textAlign: TextAlign.center, style: bodyTextStyle),
                  ],
                ),
              ),
            ),
            CalculationBtn(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE-CALCULATE')
          ],
        ));
  }
}
