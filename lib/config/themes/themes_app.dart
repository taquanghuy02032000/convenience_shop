import 'package:convinient_shop/config/colors/app_colors.dart';
import 'package:convinient_shop/config/style/text_style.dart';
import 'package:flutter/material.dart';

class ThemesApp {
  static final light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.whiteColorApp,
    appBarTheme: AppBarTheme(color: AppColor.whiteColorApp),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      titleMedium: TextStyleApp.textStyleApp(),
      titleLarge: TextStyleApp.textStyleApp(
        color: AppColor.blackBoldColorApp,
      ),
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[800],
    appBarTheme: const AppBarTheme(color: Colors.lime),
    scaffoldBackgroundColor: Colors.black45,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
    ),
  );
}
