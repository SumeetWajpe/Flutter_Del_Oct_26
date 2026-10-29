import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_design/desktopBody.dart';
import 'package:flutter_app_responsive_design/mobileBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MobileBody(),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       home: MyOrientationDemo(),
//     );
//   }
// }

// class MyOrientationDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Orientation Builder Example")),
//       body: Center(
//         child: OrientationBuilder(
//           builder: (context, orientation) {
//             return Column(
//               children: [
//                 Icon(
//                   orientation == Orientation.portrait
//                       ? Icons.phone_android
//                       : Icons.phone_iphone,
//                   size: 100,
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Device is in ${orientation == Orientation.portrait ? 'Portrait' : "Landscape"} mode',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
