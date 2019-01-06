import 'package:flutter/material.dart';

class GlobalConfig {
  ///颜色
  static Color colorPrimary = Colors.blue;
  static Color color_tags = Color(0xFF009a61);
  static Color color_black = Color(0xFF000000);
  static Color color_dark_gray = Color(0xFF6b6b6b);
  static Color color_white_a80 = Color(0xccffffff);
  static Color color_blue = Color(0xcc0000ff);

  static bool dark = false;
  static ThemeData themeData = new ThemeData.light();
  static Color searchBackgroundColor = Colors.white10;
  static Color cardBackgroundColor = new Color(0xFF222222);
  static Color fontColor = Colors.white30;
  ///导航
  static String homeTab = "首页";
  static String secondTab = "项目中心";
  static String thiredTab = "";
  static String fourthTab = "英雄广场";
  static String fifthTab = "发现";
}
