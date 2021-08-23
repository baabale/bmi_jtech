import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kInactiveCardColour,
        scaffoldBackgroundColor: kInactiveCardColour,
      ),
      home: HomeScreen(),
    );
  }
}
