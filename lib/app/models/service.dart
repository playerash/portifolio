import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service(this.id, this.title, this.color, this.image);
}

List<Service> services = [
  Service(
    1,
    "Festa de Aníversário",
    const Color(0xFFD9FFFC),
    "assets/images/graphic.png",
  ),
  Service(
    2,
    "Festa de Casamento",
    const Color(0xFFE4FFC7),
    "assets/images/ui.png",
  ),
  Service(
    3,
    "Chá Revelação",
    const Color(0xFFFFF3DD),
    "assets/images/Intreaction_design.png",
  ),
  Service(
    4,
    "E Muitas outras Festas",
    const Color(0xFFFFE0E0),
    "assets/images/desktop.png",
  )
];
