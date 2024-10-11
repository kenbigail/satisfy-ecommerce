// Place fonts/appIcon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: appIcon
//      fonts:
//       - asset: fonts/appIcon.ttf
import 'package:flutter/widgets.dart';

class AppIcon {
  AppIcon._();

  static const String _fontFamily = 'appIcon';

  static const IconData activity = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData all = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData apparel = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData footwear = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData history = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData profile = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData favorite = IconData(0xe907, fontFamily: _fontFamily);
}