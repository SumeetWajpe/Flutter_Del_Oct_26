import 'package:flutter/material.dart';

class CourseListWithRowsAndCols extends StatelessWidget {
  const CourseListWithRowsAndCols({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/react.png"),
                width: 100,
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "React",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("A JS Library"),
                ],
              ),
              Text("Delete", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/nextjs.jpeg"),
                width: 100,
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "NextJS",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("A React Fx !"),
                ],
              ),
              Text("Delete", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/nextjs.jpeg"),
                width: 100,
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "NextJS",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("A React Fx !"),
                ],
              ),
              Text("Delete", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/nextjs.jpeg"),
                width: 100,
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "NextJS",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("A React Fx !"),
                ],
              ),
              Text("Delete", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/nextjs.jpeg"),
                width: 100,
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "NextJS",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("A React Fx !"),
                ],
              ),
              Text("Delete", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/nextjs.jpeg"),
                width: 100,
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "NextJS",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("A React Fx !"),
                ],
              ),
              Text("Delete", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/nextjs.jpeg"),
                width: 100,
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "NextJS",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("A React Fx !"),
                ],
              ),
              Text("Delete", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/nextjs.jpeg"),
                width: 100,
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "NextJS",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("A React Fx !"),
                ],
              ),
              Text("Delete", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/nextjs.jpeg"),
                width: 100,
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "NextJS",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("A React Fx !"),
                ],
              ),
              Text("Delete", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ],
    );
  }
}
