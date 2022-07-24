import 'package:flutter/material.dart';

ValueNotifier<ThemeData> selectedTheme =
    ValueNotifier<ThemeData>(appThemeData[AppTheme.BlueLight]!);

enum  AppTheme { GreenLight, GreenDark, BlueLight, BlueDark, BrownDark }

final appThemeData = {
  AppTheme.BlueLight:
      ThemeData(brightness: Brightness.light, primaryColor: Colors.blue),
  AppTheme.BlueDark:
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.blue[700]),
  AppTheme.GreenLight:
      ThemeData(brightness: Brightness.light, primaryColor: Colors.green),
  AppTheme.GreenDark:
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.green[700]),
  AppTheme.BrownDark:
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.brown[900]),
};
