import 'package:flutter/material.dart';
import 'package:portifolio/app/sections/top_section/components/glass_conten.dart';

class BlurBox extends StatelessWidget {
  const BlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GlassContent(size: size),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
