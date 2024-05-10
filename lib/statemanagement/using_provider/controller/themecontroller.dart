import 'package:flutter/cupertino.dart';

class ThemeController extends ChangeNotifier {
  bool _isDarkTheme = false;

  bool get darkTheme => _isDarkTheme;

  void switchTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}
