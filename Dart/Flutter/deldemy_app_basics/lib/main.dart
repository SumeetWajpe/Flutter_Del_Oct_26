import 'package:deldemy_app_basics/models/courselist.changenotifier.model.dart';
import 'package:deldemy_app_basics/widgets/BasicStatefulWidget.dart';
import 'package:deldemy_app_basics/widgets/CourseListStatefulWidget.dart';
import 'package:deldemy_app_basics/widgets/CourseListUsingListViewBuilder.dart';
import 'package:deldemy_app_basics/widgets/CourseListUsingRowsAndCol.dart';
import 'package:deldemy_app_basics/widgets/BasicListViewWidgetCourseList.dart';
import 'package:deldemy_app_basics/widgets/CourseListWithListTile.dart';
import 'package:deldemy_app_basics/widgets/DeldemyApp.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CourseListNotifier(),
      child: MaterialApp(
        title: "Deldemy App",
        debugShowCheckedModeBanner: false,
        home: DeldemyApp(),
      ),
    ),
  );
}
