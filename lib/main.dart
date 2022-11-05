import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/result_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21),
        // primarySwatch: Colors.yellow,
        // appBarTheme:AppBarTheme(
        //   backgroundColor: Color(0xffff0000),
        // ),
//        primaryColor: Colors.red,
      ),
      //home: InputPage(),
        initialRoute: '/',
        routes: {
          '/': (context) => InputPage(),
          '/result': (context) => ResultsPage(

          ),
    //       '/result': (context) => ResultsPage(
    // bmiResult: calc.calculateBMI(),
    // resultText: calc.getResult(),
    // interpretation: calc.getInterpretation(),
    // );
    },
    );
  }
}
