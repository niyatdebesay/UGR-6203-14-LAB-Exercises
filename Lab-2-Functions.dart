import 'dart:io';

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

void printPrimeNumbersInRange(int start, int end) {
  print('Prime numbers between $start and $end:');

  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}

void main() {
  print('Enter the start value:');
  String startInput = stdin.readLineSync()!;
  int start = int.parse(startInput);

  print('Enter the end value:');
  String endInput = stdin.readLineSync()!;
  int end = int.parse(endInput);

  List<int> primeNumbers = [];

  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      primeNumbers.add(number);
    }
  }

  print('Prime numbers between $start and $end:');
  print(primeNumbers);
}