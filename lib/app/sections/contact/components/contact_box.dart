import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/responsive.dart';
import 'package:portifolio/app/sections/about_section/components/default_button.dart';
import 'package:portifolio/app/sections/contact/components/social_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Column(
        children: [
          Responsive.isDesktop(context) ? contactDesktop : Container(),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
          SizedBox(height: kDefaultPadding * 2),
          !Responsive.isDesktop(context) ? contactTableAndMobile : Container(),
        ],
      ),
    );
  }
}

Widget contactDesktop = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    SocialCard(
      color: const Color(0xFFD9FFFC),
      iconSrc: "assets/images/instagram.png",
      name: "Letícia Agra",
      press: _launchInstagram,
    ),
    SocialCard(
      color: const Color(0xFFE4FFC7),
      iconSrc: "assets/images/whatsapp.png",
      name: "Letícia Agra",
      press: _launchWhatsapp,
    ),
  ],
);

Widget contactTableAndMobile = Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: SocialCard(
        color: const Color(0xFFD9FFFC),
        iconSrc: "assets/images/instagram.png",
        name: "Letícia Agra",
        press: _launchInstagram,
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: SocialCard(
        color: const Color(0xFFE4FFC7),
        iconSrc: "assets/images/whatsapp.png",
        name: "Letícia Agra",
        press: _launchWhatsapp,
      ),
    ),
  ],
);

_launchInstagram() => {launch('https://www.instagram.com/atelieleticiaagra/')};
_launchWhatsapp() =>
    {launch('https://api.whatsapp.com/send?phone=5571983288089')};

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController typeController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    return Form(
        child: Column(
      children: [
        Wrap(
          spacing: kDefaultPadding * 2.5,
          runSpacing: kDefaultPadding * 1.5,
          children: [
            SizedBox(
              width: 470,
              child: TextFormField(
                controller: nameController,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Seu Nome",
                  hintText: "Digite Seu Nome",
                ),
              ),
            ),
            SizedBox(
              width: 470,
              child: TextFormField(
                controller: emailController,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Digite seu Email",
                ),
              ),
            ),
            SizedBox(
              width: 470,
              child: TextFormField(
                controller: typeController,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Tipo de Projeto",
                  hintText: "Selecione o Tipo de Projeto",
                ),
              ),
            ),
            SizedBox(
              //height: 300,
              child: TextFormField(
                controller: descriptionController,
                keyboardType: TextInputType.multiline,
                onChanged: (value) {},
                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(vertical: 20),
                  hintMaxLines: null,
                  labelText: "Descrição",
                  hintText: "Escreva uma descrição",
                ),
              ),
            ),
            // SizedBox(height: kDefaultPadding ),
            Center(
                child: FittedBox(
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: const Color(0xFFE8F0F9),
                    padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding,
                      horizontal: kDefaultPadding * 2.5,
                    )),
                onPressed: () {
                  sendEmail(
                    name: nameController.text,
                    email: emailController.text,
                    typeProject: typeController.text,
                    description: descriptionController.text,
                  );
                },
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/contact_icon.png",
                      height: 50,
                    ),
                    const SizedBox(width: kDefaultPadding),
                    Text("Fale comigo"),
                  ],
                ),
              ),
            )),
          ],
        )
      ],
    ));
  }
}

Future sendEmail(
    {required String name,
    required String email,
    required String typeProject,
    required String description}) async {
  final url = Uri.parse("http://api.emailjs.com/api/v1.0/email/send");
  final response = await http.post(url,
      headers: {
        'Content-Type': "application/json",
      },
      body: jsonEncode({
        "service_id": "service_nsexydm",
        "template_id": "template_rfaa71r",
        "user_id": "user_ZYUeUobsro3pQv8WX2JbU",
        "template_params": {
          "user_name": name,
          "user_email": email,
          "user_project": typeProject,
          "user_description": description,
        }
      }));

  print(response.body);
  print(name);
}
