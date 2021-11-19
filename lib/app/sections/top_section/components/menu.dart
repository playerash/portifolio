import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';

controllerPosition(String name, ScrollController controller) {
  if (name == "Home") {
    controller.animateTo(
      0,
      duration: Duration(seconds: 1),
      curve: Curves.easeOut,
    );
  } else if(name == "Sobre"){
    controller.animateTo(
      900.0,
      duration: Duration(seconds: 1),
      curve: Curves.easeOut,
    );
  } else if(name == "Serviços"){
    controller.animateTo(
      1400.0,
      duration: Duration(seconds: 1),
      curve: Curves.easeOut,
    );
  } else if(name == "Portifólio"){
    controller.animateTo(
      2200,
      duration: Duration(seconds: 1),
      curve: Curves.easeOut,
    );
  } else if(name == "Clientes"){
    controller.animateTo(
      3200,
      duration: Duration(seconds: 1),
      curve: Curves.easeOut,
    );
  } else {
    controller.animateTo(
      3900,
      duration: Duration(seconds: 1),
      curve: Curves.easeOut,
      
    );
  }
}

class Menu extends StatefulWidget {
  Menu({Key? key, required this.controller}) : super(key: key);
  ScrollController controller;

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;

  List<String> menuItems = [
    "Home",
    "Sobre",
    "Serviços",
    "Portifólio",
    "Clientes",
    "Contatos",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [kDefaultShadow]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
            List.generate(menuItems.length, (index) => buildMenuItem(index)),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
            controllerPosition(
              menuItems[index],
              widget.controller,
            );
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: const TextStyle(
                  fontSize: 20,
                  color: kTextColor,
                ),
              ),
              //hover
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -20 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
              //Select
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
            ],
          ),
        ),
      );
}
