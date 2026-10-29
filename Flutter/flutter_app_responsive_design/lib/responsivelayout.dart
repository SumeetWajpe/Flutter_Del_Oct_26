import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_design/desktopBody.dart';
import 'package:flutter_app_responsive_design/dimensions.dart';
import 'package:flutter_app_responsive_design/mobileBody.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          // return mobile body
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
