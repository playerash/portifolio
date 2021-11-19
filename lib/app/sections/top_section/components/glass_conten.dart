import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/responsive.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: Responsive.isMobile(context) ? 400 : 600),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*
              Text(
                "Óla Pessoal",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.white),
              ),*/
              Text(
               Responsive.isDesktop(context) ? "Letícia Agra" : "Letícia \nAgra",
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 60 : 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: kDefaultPadding * 2),
              Text(
                "Decoradora",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.white, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
