import 'package:deldemy_app_bloc/bloc/course.bloc.dart';
import 'package:deldemy_app_bloc/widgets/listofcourses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (context) => CourseBloc(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(body: Center(child: ListOfCourses())),
    );
  }
}
