import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
      // initialRoute: '/',
      // routes: {
      //   '/' : (context) => InputPage(),
      //   '/second' : (context) => ResultPage(),
      // },
    );
  }
}


