import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme = darkTheme;

  ThemeProvider({bool isDarkMode = true}) {
    _selectedTheme = isDarkMode ? lightTheme : darkTheme;
  }

  ThemeData get getTheme => _selectedTheme;

  void swapTheme() {
    _selectedTheme = _selectedTheme == darkTheme ? lightTheme : darkTheme;
    notifyListeners();
  }
}
