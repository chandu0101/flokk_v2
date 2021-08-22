import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;
  const Responsive(
      {required this.tablet,
      required this.desktop,
      required this.mobile,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        if (width > 1100) {
          return desktop;
        } else if (width > 670) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
