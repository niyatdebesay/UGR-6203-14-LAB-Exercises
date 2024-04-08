import 'package:flutter/material.dart';
import 'screenone.dart';

import"screentwo.dart";


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      home:ScreenOne(),
      initialRoute: '/',
      routes:{
        '/two':(context)=>ScreenTwo(),
      }
     
      );
  }
  }