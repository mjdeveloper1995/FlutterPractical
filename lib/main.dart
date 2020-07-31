import 'package:flutter/material.dart';
import 'package:practicalflutterapp/utils/custom_theme.dart';
import 'package:practicalflutterapp/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: customTheme(context),
      routes: Routes.routes(context),
    );
  }
}

