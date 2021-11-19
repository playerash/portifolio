import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/models/service.dart';
import 'package:portifolio/app/responsive.dart';
import 'package:portifolio/app/sections/service_section/components/section_title.dart';
import 'package:portifolio/app/sections/service_section/components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1200),
      child: Column(
        children: [
          SectionTitle(
            subTitle: "Dê uma olhada",
            title: Responsive.isMobile(context) ? "Serviços \nOferecidos" : "Serviços Oferecidos",
            color: Color(0xFFFF0000),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                services.length, (index) => Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: ServiceCard(index: index),
                )),
          ),
          ),
        ],
      ),
    );
  }
}




