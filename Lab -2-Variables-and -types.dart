import 'dart:io';
 const int speedOfLight = 299792458;
  double TimeToTravel (double distance){
    return distance / speedOfLight;

  }
void main(){
 
  String input = stdin.readLineSync()!;
  double distance = double.parse(input);

  double time = TimeToTravel(distance);
  print('The time it takes for light to travel $distance meters is $time seconds.');
}