import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple[400],
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,

          children: [
            Row(
              children: [
                Container(
                  width: 150.0,
                  height: 150.0,
                  color: Colors.black,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female, color: Colors.white, size: 30.0),
                      SizedBox(height: 10.0),
                      Text(
                        'Female',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150.0,
                  height: 150.0,
                  color: Colors.black,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male, color: Colors.white, size: 30.0),
                      SizedBox(height: 10.0),
                      Text(
                        'Male',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(height: 5.0),
                  Text(
                    'Height',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '60',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,),)

                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 150.0,
                  height: 150.0,
                  color: Colors.black,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(height: 5.0),
                      Text(
                        'Weight',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '60',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(children:[Container(
                        width: 40.0,
                        height: 40.0,
                        color: Colors.black,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.plus_one_rounded, color: Colors.white, size: 30.0),
                            SizedBox(height: 10.0),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          color: Colors.black,
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.exposure_minus_2_rounded, color: Colors.white, size: 30.0),
                              SizedBox(height: 10.0),
                              Text(
                                'Male',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      ),]

                      ),
                )],
                  ),
                ],
                Container(
                  width: 150.0,
                  height: 150.0,
                  color: Colors.black,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(height: 10.0),
                      Text(
                        'weight',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
      ]),
      ));


  }
}