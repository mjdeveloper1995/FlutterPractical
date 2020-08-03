import 'package:flutter/cupertino.dart';
import 'package:practicalflutterapp/screens/add_own_screen/add_own_screen.dart';
import 'package:practicalflutterapp/screens/cart_screen/cart_screen.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/restaurant_screen.dart';

class Routes {
  Routes._();
  // ignore: non_constant_identifier_names
  static String restaurantScreen = '/';
  static String cartScreen = '/cartScreen';
  static String addOwnScreen = '/addOwnScreen';

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    // ignore: always_specify_types
    return {
      restaurantScreen: (BuildContext context) => RestaurantScreen(),
      cartScreen: (BuildContext context) => CartScreen(),
      addOwnScreen: (BuildContext context) => AddOwnScreen(),
    };
  }

}