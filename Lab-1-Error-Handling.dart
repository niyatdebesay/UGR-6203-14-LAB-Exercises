import 'dart:io';

void main() {
  stdout.write('Enter a number: ');

  try {
    String userInput = stdin.readLineSync()!;
    int number = int.parse(userInput);
    print('The entered number is: $number');
  } catch (e) {
    print('Invalid input. Please enter a valid number.');
  }
}