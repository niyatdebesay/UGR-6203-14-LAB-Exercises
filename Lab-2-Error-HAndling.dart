double divideNumbers(double dividend, double divisor) {
  try {
    return dividend / divisor;
  } catch (e) {
    if (e is DivisionByZeroError) {
      print('Error: Division by zero is not allowed.');
    } else {
      print('An error occurred during division: $e');
    }
    rethrow;
  }
}

void main() {
  double num1 = 10;
  double num2 = 0;

  double result = divideNumbers(num1, num2);
  print('Result: $result');
}