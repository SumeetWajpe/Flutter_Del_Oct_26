import 'package:deldemy_app_basics/models/course.model.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatefulWidget {
  final CourseModel theCourse;
  const CourseDetails(this.theCourse);

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[Text(widget.theCourse.title.toString())],
        ),
      ),
    );
  }
}
