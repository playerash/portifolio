import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({
    Key? key,
    required this.imageSRc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSRc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFFEDEDED)),
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: () {
          press();
        },
        child: Row(
          children: [
            Image.asset(
              imageSRc,
              height: 40,
            ),
            const SizedBox(width: kDefaultPadding),
            Text(text),
          ],
        ),
      ),
    );
  }
}
