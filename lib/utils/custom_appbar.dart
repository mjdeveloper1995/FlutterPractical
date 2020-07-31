import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context, String title,List<Widget> listOfWidgets) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
    actions: listOfWidgets,
    leading: Icon(
      Icons.arrow_back,
      size: 28.0,
    ),
  );
  // you can apply as many customization as per you requirement
}
