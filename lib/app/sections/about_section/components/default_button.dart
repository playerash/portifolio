import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
        press();
      },
      child: Row(
        children: [
          Image.asset(
            imageSrc,
            height: 50,
          ),
          const SizedBox(width: kDefaultPadding),
          Text(text),
        ],
      ),
    );
  }
}
