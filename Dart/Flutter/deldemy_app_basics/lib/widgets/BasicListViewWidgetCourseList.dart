import 'package:flutter/material.dart';

class BasicListViewWidgetCourseList extends StatelessWidget {
  BasicListViewWidgetCourseList({super.key});

  final List<String> listofcourses = [
    "React",
    "Angular",
    "Vue",
    "Flutter",
    "Dart",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),

      children: <Widget>[
        ...listofcourses.map(
          (String course) => ListTile(
            leading: Image(image: AssetImage("assets/images/react.png")),
            title: Text(course),
            subtitle: Text("Learn new things!"),
            trailing: Text("Delete", style: TextStyle(color: Colors.red)),
          ),
        ),
      ],
    );
  }
}


// [
//         ...listofcourses.map(
//           (String course) => Text(course, style: TextStyle(fontSize: 30)),
//         ),
//       ]

// =

//[Text("React"),Text("Angular")]

