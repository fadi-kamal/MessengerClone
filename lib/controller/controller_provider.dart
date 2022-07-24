import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData darkTheme = ThemeData(colorScheme: ColorScheme.dark());
ThemeData lightTheme = ThemeData(colorScheme: ColorScheme.light());

class Controller extends ChangeNotifier {
  bool _darkTheme = false;
  SharedPreferences? _sharePrf;

  bool get darkTheme => _darkTheme;

  ThemeSetting() {
    _onLoadingPefr();
  }

  _initializePefrs() async {
    if (_sharePrf == null) {
      _sharePrf = await SharedPreferences.getInstance();
    }
  }
  _onLoadingPefr() async {
    await _initializePefrs();
    _darkTheme = _sharePrf!.getBool("DarkTheme") ?? false;
    notifyListeners();
  }

  _onSavePefs() async {
    await _initializePefrs();
    _sharePrf!.setBool("DarkTheme", _darkTheme);
  }


  getDark() {
    _darkTheme = !_darkTheme;
    _onSavePefs();
    notifyListeners();
  }
}
