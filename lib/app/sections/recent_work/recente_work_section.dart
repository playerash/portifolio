import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/models/recent_work.dart';
import 'package:portifolio/app/responsive.dart';
import 'package:portifolio/app/sections/recent_work/components/hire_me_card.dart';
import 'package:portifolio/app/sections/recent_work/components/recent_work_card.dart';
import 'package:portifolio/app/sections/service_section/components/section_title.dart';

class RecenteWorkSection extends StatelessWidget {
  const RecenteWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      //height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: Responsive.isMobile(context)
                ? "Trabalhos \nRecentes"
                : "Trabalhos Recentes",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFFB100),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          /*
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                  recenteWorks.length,
                  (index) => RecentWorkCard(
                        index: index,
                        press: () {},
                      )),
            ),
          ),
          */
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(recenteWorks.length, (index) {
                if (index % 2 == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: RecentWorkCard(index: index, press: () {}),
                  );
                } else {
                  return Container();
                }
              }),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                recenteWorks.length,
                (index) {
                  if (index % 2 != 0) {
                    return Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: RecentWorkCard(index: index, press: () {}),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
