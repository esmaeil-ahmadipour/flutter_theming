import 'package:flutter/material.dart';
import 'package:flutter_theming/app_theme.dart';
import 'package:flutter_theming/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeData>(
        valueListenable: selectedTheme,
        builder: (context, data, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: data,
              home: const SettingsPage());
        });
  }
}
