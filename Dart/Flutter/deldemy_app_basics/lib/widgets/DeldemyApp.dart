import 'package:deldemy_app_basics/widgets/CourseListStatefulWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeldemyApp extends StatelessWidget {
  const DeldemyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Deldemy App", style: TextStyle(color: Colors.white)),
      ),
      body: CourseListStatefulWidget(),
    );
  }
}
