import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portifolio/app/responsive.dart';
import 'package:portifolio/app/sections/top_section/components/blur_box.dart';
import 'package:portifolio/app/sections/top_section/components/menu.dart';
import 'package:portifolio/app/sections/top_section/components/person_pic.dart';
import 'package:portifolio/app/constants.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key, required this.controller}) : super(key: key);
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    double bottomResponse() {
      if (Responsive.isDesktop(context)) {
        return 0;
      } else if (Responsive.isTablet(context)) {
        return -150;
      } else {
        return 0;
      }
    }

    double rightResponse() {
      if (Responsive.isDesktop(context)) {
        return 50;
      } else if (Responsive.isTablet(context)) {
        return -50;
      } else {
        return -25;
      }
    }

    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
          maxHeight: Responsive.isMobile(context) ? 500 : 700, minHeight: 400),
      width: double.infinity,
      decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/background.png"),
          ),
          boxShadow: [kDefaultShadow]),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BlurBox(size: size),
            Positioned(
                bottom: bottomResponse(),
                right: rightResponse(),
                child: PersonPic()),
            Positioned(
              bottom: 0,
              child: Responsive.isDesktop(context)
                  ? Menu(controller: controller)
                  : Container(),
            )
          ],
        ),
      ),
    );
  }
}
