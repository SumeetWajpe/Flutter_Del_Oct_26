import 'package:flutter/material.dart';

class MyColumns extends StatelessWidget {
  const MyColumns({super.key});

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: <Widget>[
    //     Container(
    //       color: Colors.amber,
    //       height: 150,
    //       width: 150,
    //       margin: EdgeInsets.all(20),
    //       padding: EdgeInsets.all(20),
    //       child: Text("Hello Column"),
    //     ),
    //     Container(
    //       color: Colors.blue,
    //       height: 150,
    //       width: 150,
    //       margin: EdgeInsets.all(20),
    //       padding: EdgeInsets.all(20),
    //       child: Text("Hello Column"),
    //     ),
    //     Container(
    //       color: Colors.teal,
    //       height: 150,
    //       width: 150,
    //       margin: EdgeInsets.all(20),
    //       padding: EdgeInsets.all(20),
    //       child: Text("Hello Column"),
    //     ),
    //   ],
    // );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.amber,
          height: 100,
          width: 100,
          margin: EdgeInsets.all(20),
          child: Text("Row 1"),
        ),
        Container(
          color: Colors.blue,
          height: 70,
          width: 70,
          margin: EdgeInsets.all(20),
          child: Text("Row 2"),
        ),
        Container(
          color: Colors.teal,
          height: 70,
          width: 70,
          margin: EdgeInsets.all(20),
          child: Text("Row 3"),
        ),
      ],
    );
  }
}
