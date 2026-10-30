import 'package:deldemy_app_basics/screens/AddNewCourse.dart';
import 'package:deldemy_app_basics/widgets/CourseListStatefulWidget.dart';
import 'package:deldemy_app_basics/widgets/TotalCourses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeldemyApp extends StatelessWidget {
  const DeldemyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 163, 49, 208),
        centerTitle: true,
        title: Text(
          "Deldemy App",
          style: TextStyle(color: const Color.fromARGB(255, 246, 246, 244)),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: CourseListStatefulWidget()),
          TotalCourses(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // navigate to AddNewCourseScreen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNewCourse()),
          );
        },
        backgroundColor: Colors.purple,
        child: Semantics(
          label: "Add New Course",
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
