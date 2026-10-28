import 'package:deldemy_app_basics/widgets/BasicStatefulWidget.dart';
import 'package:deldemy_app_basics/widgets/CourseListStatefulWidget.dart';
import 'package:deldemy_app_basics/widgets/CourseListUsingListViewBuilder.dart';
import 'package:deldemy_app_basics/widgets/CourseListUsingRowsAndCol.dart';
import 'package:deldemy_app_basics/widgets/BasicListViewWidgetCourseList.dart';
import 'package:deldemy_app_basics/widgets/CourseListWithListTile.dart';

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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Text("Deldemy App", style: TextStyle(color: Colors.white)),
        ),
        body: CourseListStatefulWidget(),
      ),
    );
  }
}
