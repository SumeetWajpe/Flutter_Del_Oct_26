import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_design/desktopBody.dart';
import 'package:flutter_app_responsive_design/mobileBody.dart';
import 'package:flutter_app_responsive_design/responsivelayout.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
