import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/sections/about_section/about_section.dart';
import 'package:portifolio/app/sections/contact/contact_section.dart';
import 'package:portifolio/app/sections/feedback/feedback_section.dart';
import 'package:portifolio/app/sections/recent_work/recente_work_section.dart';
import 'package:portifolio/app/sections/service_section/service_section.dart';
import 'package:portifolio/app/sections/top_section/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = ScrollController();
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children:[
            TopSection(controller: controller,),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecenteWorkSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding * 2),
            ContactSection(),
            //SizedBox(height: 500,)
          ],
        ),
      ),
    );
  }
}
