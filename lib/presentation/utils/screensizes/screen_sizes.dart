import 'package:flutter/material.dart';

class ScreenSizes {
  static double? width;
  static double? height;

  double getWidth(BuildContext context) {
    return width = MediaQuery.of(context).size.width;
  }

  double getHeight(BuildContext context) {
    return height = MediaQuery.of(context).size.height;
  }
}

ScreenSizes screenSizes = new ScreenSizes();
