import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData themeData=ThemeData.light();

  getTheme() => themeData;

  void toggleTheme() {
    if (themeData == ThemeData.light()) {
      themeData = ThemeData.dark();
    }
    else{
      themeData = ThemeData.light();
    }
    notifyListeners();
  }
}
