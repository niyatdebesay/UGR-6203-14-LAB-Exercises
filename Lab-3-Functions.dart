import 'dart:io';
void main(){
  print("Enter a word: ");
  String input = stdin.readLineSync()!;
   List arrays = input.split('');
   List Reverse = arrays.reversed.toList();
   String reversedd = Reverse.join();
   print(reversedd);
   }

 

  

