import 'package:flutter/material.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/providers/category_provider.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/providers/data_provider.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/providers/slider_provider.dart';
import 'package:practicalflutterapp/utils/custom_theme.dart';
import 'package:practicalflutterapp/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: SliderProvider()),
        ChangeNotifierProvider.value(value: DataProvider()),
        ChangeNotifierProvider.value(value: CategoryProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: customTheme(context),
        routes: Routes.routes(context),
      ),
    );
  }
}
