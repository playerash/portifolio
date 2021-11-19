import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/responsive.dart';
import 'package:portifolio/app/sections/about_section/components/default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultCardShadow],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png",
            height: 50,
            width: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Iniciando Um Novo Projeto?",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: kDefaultPadding / 2),
                Text(
                  "Consiga uma estimativa de um novo projeto",
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          Responsive.isMobile(context) ? Container() : DefaultButton(
            imageSrc: "assets/images/hand.png",
            text: "Contrate-me",
            press: () {},
          ) 
        ],
      ),
    );
  }
}
