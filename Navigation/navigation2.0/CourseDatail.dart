import 'package:flutter/material.dart';
import 'class.dart';
// import 'main.dart';
// import 'Courseslist.dart';

class CoursesDetailScreen extends StatelessWidget {
  final Course course;
  const CoursesDetailScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: Center(child: Column(children: [
        Text(course.title),
        Text(course.code),
        Text(course.description)
      ],),),
    );
  }
}