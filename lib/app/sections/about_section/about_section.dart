import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/responsive.dart';
import 'package:portifolio/app/sections/about_section/components/about_section_text.dart';
import 'package:portifolio/app/sections/about_section/components/default_button.dart';
import 'package:portifolio/app/sections/about_section/components/experience_card.dart';
import 'package:portifolio/app/sections/about_section/components/my_outlined_button.dart';
import 'package:portifolio/app/sections/about_section/components/text_with_sign.dart';
import 'package:portifolio/app/sections/service_section/components/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: Responsive.isDesktop(context)
          ? BoxConstraints(maxWidth: 1110)
          : BoxConstraints(maxWidth: 1110, maxHeight: Responsive.isMobile(context) ? 700 : 600),
      child: Responsive(
        mobile: Column(
          children: const [
            SectionTitle(
              title: "Sobre Mim",
              subTitle: "Um pouquinho sobre mim.",
              color: Color(0xFF07E24A),
            ),
            ExperienceCard(
              numberEx: "4",
            ),
            SizedBox(height: kDefaultPadding * 2),
            Expanded(
              child: AboutSectionText(
                text:
                    "Foi popularizado na década de 1960 com o lançamento de folhas de Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editoração eletrônica como Aldus PageMaker incluindo versões de Lorem Ipsum.",
              ),
            )
          ],
        ),
        tablet: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AboutTextWithSign(),
                ExperienceCard(
                  numberEx: "4",
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding),
            Row(
              children: [
                Expanded(
                  child: AboutSectionText(
                    text:
                        "Foi popularizado na década de 1960 com o lançamento de folhas de Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editoração eletrônica como Aldus PageMaker incluindo versões de Lorem Ipsum.",
                  ),
                ),
                Expanded(
                  child: AboutSectionText(
                    text:
                        "Foi popularizado na década de 1960 com o lançamento de folhas de Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editoração eletrônica como Aldus PageMaker incluindo versões de Lorem Ipsum.",
                  ),
                )
              ],
            ),
            SizedBox(height: kDefaultPadding * 3),
            MyOutlinedButton(
              imageSRc: "assets/images/hand.png",
              text: "Contrate-me",
              press: () {},
            ),
          ],
        ),
        desktop: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AboutTextWithSign(),
                Expanded(
                  child: AboutSectionText(
                    text:
                        "Foi popularizado na década de 1960 com o lançamento de folhas de Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editoração eletrônica como Aldus PageMaker incluindo versões de Lorem Ipsum.",
                  ),
                ),
                ExperienceCard(
                  numberEx: "4",
                ),
                Expanded(
                  child: AboutSectionText(
                    text:
                        "Foi popularizado na década de 1960 com o lançamento de folhas de Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editoração eletrônica como Aldus PageMaker incluindo versões de Lorem Ipsum.",
                  ),
                ),
              ],
            ),
            const SizedBox(height: kDefaultPadding * 6.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyOutlinedButton(
                  imageSRc: "assets/images/hand.png",
                  text: "Contrate-me",
                  press: () {},
                ),
                const SizedBox(width: kDefaultPadding),
                /*
                DefaultButton(
                  imageSrc: "assets/images/download.png",
                  text: "Download CV",
                  press: () {},
                ),
                */
              ],
            ),
          ],
        ),
      ),
    );
  }
}
