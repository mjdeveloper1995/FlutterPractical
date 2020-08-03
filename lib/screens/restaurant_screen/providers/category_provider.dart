import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  List<String> tabItems = [
    'Bestseller',
    'Soups',
    'Main Course',
    'Rice',
    'Snacks'
  ];
  int selectedPosition = 0;

  void setPosition(int position) {
    selectedPosition = position;
    notifyListeners();
  }
}
