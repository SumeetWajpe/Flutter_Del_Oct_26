import 'package:deldemy_app_basics/widgets/CourseListUsingRowsAndCol.dart';
import 'package:deldemy_app_basics/widgets/BasicListViewWidgetCourseList.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: BasicListViewWidgetCourseList()),
    );
  }
}
