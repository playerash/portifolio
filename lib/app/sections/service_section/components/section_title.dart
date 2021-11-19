import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/responsive.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
  }) : super(key: key);

  final String title, subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    TextStyle? headlineTitle() {
      if (Responsive.isVerySmall(context)) {
        return Theme.of(context).textTheme.headline4;
      }
      else{
        return Theme.of(context).textTheme.headline2;
      }
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 150,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            padding: EdgeInsets.only(bottom: 72),
            width: 8,
            height: 100,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                subTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: kTextColor,
                ),
              ),
              Text(
                title,
                style: headlineTitle()?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              )
            ],
          )
        ],
      ),
    );
  }
}
