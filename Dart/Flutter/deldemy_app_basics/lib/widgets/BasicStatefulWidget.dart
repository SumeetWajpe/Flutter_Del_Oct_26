import 'package:flutter/material.dart';

class BasicStatefulWidget extends StatefulWidget {
  const BasicStatefulWidget({super.key});

  @override
  State<BasicStatefulWidget> createState() => _BasicStatefulWidgetState();
}

class _BasicStatefulWidgetState extends State<BasicStatefulWidget> {
  var count;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = 100;
  }

  void increment() {
    // increment the count
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Count : $count", style: const TextStyle(fontSize: 30)),
        ElevatedButton(onPressed: increment, child: const Text("Increment++")),
      ],
    );
  }
}
