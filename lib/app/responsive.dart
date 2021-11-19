import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 590;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1110 &&
      MediaQuery.of(context).size.width >= 590;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1110;

  static bool isVerySmall(BuildContext context) =>
      MediaQuery.of(context).size.width < 320;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1110) {
          print(constraints.maxWidth);
          print("desktop");
          return desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 590) {
          print("ipad");
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          print("mobile");
          return mobile;
        }
      },
    );
  }
}
