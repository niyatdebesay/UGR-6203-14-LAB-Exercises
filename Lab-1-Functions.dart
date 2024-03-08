import 'dart:io';

void main(){
  print(Sums());

}
int Sums(){
  print("Enter Number1: ");
  String number = stdin.readLineSync()!;
  int number1 = int.parse(number);

  print("Enter Number2: ");
  String Number2 = stdin.readLineSync()!;
  int number2 = int.parse(Number2);
  return number1 + number2;
  

  



}