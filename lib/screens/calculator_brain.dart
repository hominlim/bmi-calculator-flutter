
import 'dart:math';
import 'input_page.dart';

class CalculatorBrain{

  CalculatorBrain({this.height, this.weight, this.gender, this.waist});

  final int height;
  final int weight;
  final Gender gender;
  final int waist;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi <= 18.5){
      return 'Underweight';
    } else if(_bmi > 18.5 && _bmi <= 25){
      return 'Healthful weight';
    } else if(_bmi > 25 && _bmi <= 30){
      return 'Overweight';
    } else if(_bmi > 30 && _bmi <= 35){
      return 'Obesity Class I';
    } else if(_bmi > 35 && _bmi <= 40){
      return 'Obesity Class II';
    } else {
      return 'Extreme Obesity, Class III';
    }
  }
  String getInterpretation(){
    if(_bmi <= 18.5){
      return 'Eat more!';
    } else if(_bmi > 18.5 && _bmi <= 25){
      return 'Keep Fit';
    } else if(_bmi > 25 && _bmi <= 30){
        if(gender==Gender.male){
          if(waist<=40){
            return 'Increased Risk';
          } else {
            return 'High Risk';
          }
        }
        if(gender==Gender.female) {
          if (waist <= 35) {
            return 'Increased Risk';
          } else {
            return 'High Risk';
          }
        }
        else{
          return 'NULL';
        }

    } else if(_bmi > 30 && _bmi <= 35){
      if(gender==Gender.male){
        if(waist<=40){
          return 'High Risk';
        } else {
          return 'Very High Risk';
        }
      }
      if(gender==Gender.female) {
        if (waist <= 35) {
          return 'High Risk';
        } else {
          return 'Very High Risk';
        }
      }
    else{
      return 'NULL';
    }
    } else if(_bmi > 35 && _bmi <= 40){
      return 'Very High Risk';
    } else {
      return 'Extremely High Risk';
    }

  }
}