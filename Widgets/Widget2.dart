import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
      appBar:AppBar(title:Text("Cart"),
      centerTitle: true
        ,
      ),body:Column(children:[
        Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.add_shopping_cart),
          title: Text('shopping cart'),
          subtitle: Text('verify your quantity'),
        ),

      ],
    ),
    ),
    Column(children:[Card(


            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[Row(children:<Widget>[ Image.network(
                "https://www.burgerartist.com/wp-content/uploads/2016/11/pizza-burger-thumb.jpg",
                width: 40.0,
                height:40.0, ),
                ListTile(

                  title: Text('Calories'),
                  subtitle: Text('15.00'),
                ),],)

        ],
      ),
    ),]

    ),Card(


        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Row(children:<Widget>[ Image.network(
            "https://www.burgerartist.com/wp-content/uploads/2016/11/pizza-burger-thumb.jpg",
            width: 40.0,
            height:40.0, ),
            ListTile(

              title: Text('Calories'),
              subtitle: Text('15.00'),
            ),],)

          ],
        ),
      ),],
    )),);
  }
}

