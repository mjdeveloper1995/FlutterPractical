import 'package:flutter/material.dart';

ThemeData customTheme(BuildContext context) {
  return ThemeData(
    primaryColor: const Color.fromARGB(255, 255, 255, 255),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
    accentColor: Colors.white,
  );
  // you can apply as many customization as per you requirement
}
