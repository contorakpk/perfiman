import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

//Dark Theme
const Color kDarkCanvasColor = Color(0xFF252834);
const Color kDarkBackgroundColor = Color(0xFF1E2128);

const Color kDarkAccentColor = Color(0xFF5873FF);
const Color kDarkSecondaryColor = Color(0xFF5267de);
const Color kDarkTertiaryColor = Color(0xFF989a9f);

const Color kDarkPrimaryTextColor = Colors.white;
const Color kDarkSecondaryTextColor = Colors.white60;

//Light Theme

ThemeData lightTheme = ThemeData();
ThemeData darkTheme = ThemeData(
  canvasColor: kDarkCanvasColor,
  cardColor: kDarkBackgroundColor,
  primaryColor: kDarkAccentColor,
  secondaryHeaderColor: kDarkSecondaryColor,
  iconTheme: const IconThemeData(
    color: kDarkPrimaryTextColor,
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
  textTheme: const TextTheme(
    headline3: TextStyle(color: kDarkPrimaryTextColor),
    headline4: TextStyle(color: kDarkPrimaryTextColor),
    headline5: TextStyle(color: kDarkPrimaryTextColor),
    headline6: TextStyle(color: kDarkPrimaryTextColor),
    subtitle2: TextStyle(color: kDarkTertiaryColor),
  ),
);

class ThemeNotifier extends ChangeNotifier {
  late SharedPreferences _prefs;
  final String themePath = 'theme';
  bool isDarkTheme = true;

  bool get darkTheme => isDarkTheme;

  ThemeNotifier() {
    _loadFromPrefs();
  }

  toggletheme() {
    isDarkTheme = !isDarkTheme;
    _saveToPrefs();
    notifyListeners();
  }

  _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
    await _initPrefs();
    isDarkTheme = _prefs.getBool(themePath) ?? true;
    notifyListeners();
  }

  _saveToPrefs() async {
    await _initPrefs();
    _prefs.setBool(themePath, isDarkTheme);
  }
}
