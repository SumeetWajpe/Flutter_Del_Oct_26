import 'package:deldemy_app_basics/models/course.model.dart';
import 'package:deldemy_app_basics/widgets/Rating.dart';
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
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(image: NetworkImage(widget.theCourse.imageUrl!), height: 300),
            ListTile(
              title: Text(
                widget.theCourse.title!,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Rating(rating: widget.theCourse.rating!),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.favorite_outlined, color: Colors.red)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        child: const Icon(
                          Icons.thumb_up_alt_outlined,
                          size: 25,
                          color: Color.fromARGB(255, 129, 73, 189),
                        ),
                        onTap: () {
                          widget.theCourse.likes += 1;
                        },
                      ),
                      Text(
                        widget.theCourse.likes.toString(),
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        widget.theCourse.trainer.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(widget.theCourse.description!),
            ),
          ],
        ),
      ),
    );
  }
}
