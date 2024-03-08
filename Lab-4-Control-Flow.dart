import 'dart:io';
void main(){
  print("Enter Your grade: ");
  String input = stdin.readLineSync()!;
  int grade = int.parse(input);
  switch(grade){
    case <=100 && >=90:
    print("You got an A+");
    break;
    case <90 && >=83:
    print("You got an A");
    break;
     case <83 && >=80:
     print("You got an A-");
    break;
     case <80 && >=75:
     print("You got an B+");
    break;
     case <75&& >=70:
     print("You got an B");
    break;
    
    case <65 && >=60:
    print("You got an C");
    break;
    case <60&& >=55:
    print("You got an D");
    break;



  }
 


}