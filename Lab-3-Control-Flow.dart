import 'dart:io';
void main(){
    SimpleCalculator();
}
void SimpleCalculator(){
      print('Enter the first Number');
  String Num1input = stdin.readLineSync()!;
  double number1 = double.parse(Num1input);

    print('Enter the second number');
  String Num2input = stdin.readLineSync()!;
  double number2 = double.parse(Num2input);
  
  print('Enter the sign');
  String Signinput = stdin.readLineSync()!;
 
  switch(Signinput){
    case "+":
      print( 'Result:${number1 + number2}');
      break;
    case "-":
    print('Result: ${number1- number2}') ; 
      break;
    case "*":
    print( 'Result:${number1 * number2}');
    break;
    case "/":
     if (number2 != 0) {
        print('Result: ${number1 / number2}');
      } else {
        print('Error: Division by zero is not allowed.');
      }
      break;
     default:
      print('Error: Invalid operator: $Signinput');


  }
}