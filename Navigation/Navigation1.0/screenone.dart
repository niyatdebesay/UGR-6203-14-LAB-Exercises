import "package:flutter/material.dart";
import "screentwo.dart";
void main()=>runApp(
  MaterialApp(
  home: ScreenOne()));

class ScreenOne extends StatelessWidget{
  const ScreenOne({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
      title:Text("screenOne"),
      ),body:Column(children:[ElevatedButton(onPressed:(){
        
        Navigator.push(context,MaterialPageRoute(builder:(context)=>ScreenTwo(),
        settings: RouteSettings(arguments:"This is about to be passed onto the next page ")));
      },child: Text("Go to Screen two"),)
      ,SizedBox(height:20.0),
      
      
      
      ElevatedButton(onPressed: (){
        Navigator.pushNamed(context,'/two');
      }, child: Text("named Route to Screen Two"))]))
      ;

}
}