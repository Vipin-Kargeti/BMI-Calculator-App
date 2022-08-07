import 'package:flutter/material.dart';
import 'constants.dart';

class CalculationBtn extends StatelessWidget {
  CalculationBtn({required this.onTap, required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonTitle, style: largeButtonTextStyle)),
        color: bottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        height: bottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}