import "package:flutter/material.dart";
import "screenone.dart";
void main()=>runApp(
  ScreenTwo());

class ScreenTwo extends StatelessWidget{
      ScreenTwo({super.key});
  
  @override
  Widget build(BuildContext context){
    // final text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(appBar: AppBar(
      title:Text("screentwo"),
      
      ),
      body:
      ElevatedButton(onPressed:(){
        Navigator.push(context,MaterialPageRoute(builder:(context)=>ScreenOne()));
      
      },child: Text("Go Back"),
      ),
      // body:Text("the text is $text")
      )
      ;

}
}