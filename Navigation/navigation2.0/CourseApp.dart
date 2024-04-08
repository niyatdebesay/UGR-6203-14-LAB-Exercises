import 'package:flutter/material.dart';
import 'package:insideclass/CourseDatail.dart';
import 'class.dart';

import 'Courseslist.dart';

class CourseApp extends StatefulWidget {
  

  @override
  State<CourseApp> createState() => _MyWidgetState();
 
}

class _MyWidgetState extends State<CourseApp> {
   Course? _selectedCourse;
   void _tabhandler(Course course){
    setState((){
      _selectedCourse = course;
    });
   }
  List<Course> courses = [
  Course(code:'site-001',title:"introduction to Ai", description:'Basic Info'),
   Course(code:'site-001',title:"introduction to Ai", description:'Basic Info'),
    Course(code:'site-001',title:"introduction to Ai", description:'Basic Info')];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Navigator( 
      pages:[MaterialPage(key:const ValueKey("CourseListScreen"),
      child:CoursesListScreen(courses: courses, onTapped: _tabhandler)),
      if (_selectedCourse !=null)
        MaterialPage(key:ValueKey(_selectedCourse),child: CoursesDetailScreen(course:_selectedCourse!,))


    ],));
    
  }
}