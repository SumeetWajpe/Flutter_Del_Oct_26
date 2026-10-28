import 'package:deldemy_app_basics/models/course.model.dart';
import 'package:deldemy_app_basics/models/courselist.changenotifier.model.dart';
import 'package:deldemy_app_basics/screens/course.details.dart';
import 'package:deldemy_app_basics/widgets/Rating.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseListStatefulWidget extends StatefulWidget {
  const CourseListStatefulWidget({super.key});

  @override
  State<CourseListStatefulWidget> createState() =>
      _CourseListStatefulWidgetState();
}

class _CourseListStatefulWidgetState extends State<CourseListStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CourseListNotifier>(
      builder: (_, courselistChangeNotifierInstance, _) => ListView.builder(
        itemCount: courselistChangeNotifierInstance.listofcourses.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onHorizontalDragEnd: (_) {
              courselistChangeNotifierInstance.deleteACourse(index);
            },
            child: Card(
              elevation: 15,
              margin: EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CourseDetails(
                          courselistChangeNotifierInstance.listofcourses[index],
                        ),
                      ),
                    );
                  },
                  child: Image(
                    image: NetworkImage(
                      courselistChangeNotifierInstance
                          .listofcourses[index]
                          .imageUrl!,
                    ),
                    width: 100,
                  ),
                ),
                title: Text(
                  courselistChangeNotifierInstance.listofcourses[index].title!,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 12, 12, 12),
                  ),
                ),
                subtitle: Text(
                  courselistChangeNotifierInstance
                      .listofcourses[index]
                      .subtitle!,
                  style: const TextStyle(fontSize: 15, color: Colors.grey),
                ),
                trailing: Column(
                  children: [
                    InkWell(
                      child: const Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 25,
                        color: Color.fromARGB(255, 129, 73, 189),
                      ),
                      onTap: () {
                        // to increment the likes
                        setState(() {
                          courselistChangeNotifierInstance
                                  .listofcourses[index]
                                  .likes +=
                              1;
                        });
                      },
                    ),
                    Text(
                      courselistChangeNotifierInstance
                          .listofcourses[index]
                          .likes
                          .toString(),
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

//  trailing: Column(
//               children: [
//                 InkWell(
//                   child: const Icon(
//                     Icons.thumb_up_alt_outlined,
//                     size: 25,
//                     color: Color.fromARGB(255, 129, 73, 189),
//                   ),
//                   onTap: () {
//                     // to increment the likes
//                     setState(() {
//                       listofcourses[index].likes += 1;
//                     });
//                   },
//                 ),
//                 Text(
//                   listofcourses[index].likes.toString(),
//                   style: TextStyle(fontSize: 14),
//                 ),
//               ],
//             ),


// trailing: InkWell(
//                 child: const Icon(
//                   Icons.delete,
//                   color: Color.fromARGB(255, 218, 64, 53),
//                 ),
//                 onTap: () {
//                   // delete the course ??
//                   deleteACourse(index);
//                 },
//               ),