import 'package:deldemy_app_basics/models/course.model.dart';
import 'package:flutter/material.dart';

class CourseListStatefulWidget extends StatefulWidget {
  const CourseListStatefulWidget({super.key});

  @override
  State<CourseListStatefulWidget> createState() =>
      _CourseListStatefulWidgetState();
}

class _CourseListStatefulWidgetState extends State<CourseListStatefulWidget> {
  final List<CourseModel> listofcourses = [
    CourseModel(
      1,
      "React",
      "A JS library",
      100,
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/3840px-React-icon.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
    ),
    CourseModel(
      2,
      "Node",
      "A Server FX",
      200,
      "https://miro.medium.com/v2/resize:fit:800/1*bc9pmTiyKR0WNPka2w3e0Q.png",
    ),
    CourseModel(
      3,
      "Angular",
      "A JS FX",
      500,
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Angular_gradient_logo.png/960px-Angular_gradient_logo.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",
    ),
    CourseModel(
      4,
      "Flutter",
      "A Cross Platform solution",
      200,
      "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
    ),
    CourseModel(
      5,
      "MongoDB",
      "A document based DB",
      200,
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2ZYtHv2OLXmthRPbkmENZRXuqBVDwlsrZ1A&s",
    ),
  ];
  void deleteACourse(int index) {
    setState(() {
      listofcourses.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listofcourses.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onHorizontalDragEnd: (_) {
            deleteACourse(index);
          },
          child: Card(
            elevation: 15,
            margin: EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: Image(
                image: NetworkImage(listofcourses[index].imageUrl!),
                width: 100,
              ),
              title: Text(
                listofcourses[index].title!,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 12, 12, 12),
                ),
              ),
              subtitle: Text(
                listofcourses[index].subtitle!,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              ),
              trailing: InkWell(
                child: const Icon(
                  Icons.delete,
                  color: Color.fromARGB(255, 218, 64, 53),
                ),
                onTap: () {
                  // delete the course ??
                  deleteACourse(index);
                },
              ),
            ),
          ),
        );
      },
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
