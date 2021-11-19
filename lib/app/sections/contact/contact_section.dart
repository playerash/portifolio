import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/responsive.dart';
import 'package:portifolio/app/sections/contact/components/contact_box.dart';
import 'package:portifolio/app/sections/service_section/components/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: Responsive.isMobile(context) ? "Entre em \nContato" : "Entre em Contato",
            subTitle: "Fale comigo",
            color: Color(0xFF07E24A),
          ),
          ContactBox(),
        ],
      ),
    );
  }
}