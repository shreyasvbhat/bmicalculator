import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});
  late double bmi;

  bmiResult() {
    bmi = (weight / pow(height / 100, 2));
    return bmi.toStringAsFixed(1);
  }

  bmiResultText() {
    if (bmi > 25.0) {
      return "Overweight";
    } else if (bmi > 18.5 && bmi < 25.0) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  bmiDescription() {
    if (bmi > 25.0) {
      return "You have more wieght, eat less";
    } else if (bmi > 18.5 && bmi < 25.0) {
      return "You have normal wieght, keeep it up";
    } else {
      return "You have less wieght, eat more";
    }
  }
}
