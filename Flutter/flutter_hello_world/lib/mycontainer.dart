import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        width: 150,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Image(image: AssetImage("assets/images/reactjs.png")),
        ),
      ),
    );
  }
}
