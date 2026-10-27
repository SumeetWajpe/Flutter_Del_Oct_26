import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Image(
            image: AssetImage("assets/images/reactjs.png"),
            width: 500,
            height: 250,
          ),
        ),
      ),
    );
  }
}
