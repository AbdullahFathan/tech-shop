import 'package:flutter/material.dart';

class AppFonts {
  TextStyle bold(
    Color color,
    double size,
  ) =>
      TextStyle(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: size,
      );

  TextStyle medium(
    Color color,
    double size,
  ) =>
      TextStyle(
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: size,
      );

  TextStyle reguler(
    Color color,
    double size,
  ) =>
      TextStyle(
        fontWeight: FontWeight.w400,
        color: color,
        fontSize: size,
      );
}
