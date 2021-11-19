import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kTextColor = Color(0xFF707070);
const kTextLighColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: const Color(0xFF0700B1).withOpacity(0.1),
);

final kDefaultCardShadow = BoxShadow(
    offset: const Offset(0, 20),
    blurRadius: 50,
    color: Colors.black.withOpacity(0.1));

final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(50),
  borderSide: const BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);
