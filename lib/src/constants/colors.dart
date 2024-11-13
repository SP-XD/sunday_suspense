import 'package:flutter/material.dart';

class SpxdAppConstants {
  static const primaryColor = Color.fromARGB(255, 255, 34, 34);
  static const secondaryColor = Color.fromARGB(255, 201, 0, 0);

  static const primaryColorDark = Color.fromARGB(255, 200, 7, 0);

  static const primaryColorDarkest = Color.fromARGB(255, 50, 0, 0);

  static var white = Colors.grey.shade300;

  static var grey = Colors.grey.shade600;
  static var greyDark = Colors.grey.shade800;

  static const primaryGradient = LinearGradient(
    colors: [Color.fromARGB(255, 255, 34, 34), Color.fromARGB(255, 201, 0, 0)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const GrayToDarkerGrayGradient = LinearGradient(
    colors: [Color.fromARGB(255, 28, 28, 28), Color.fromARGB(255, 16, 16, 16)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LighterGrayToTransparentGradient = LinearGradient(
    colors: [Color.fromARGB(255, 50, 50, 50), Colors.transparent],
    stops: [0.2, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
