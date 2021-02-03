import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;

  double _bmi;

  BMICalculator({this.height, this.weight});

  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    _bmi = bmi;

    return bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal weight.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Goog job!";
    } else {
      return "You have a lower than normal body weight. ";
    }
  }
}
