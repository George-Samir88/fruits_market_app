import 'dart:developer';

import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? screenDefaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
    //default size relative to width
    screenDefaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;
    log('this is the default size $screenDefaultSize');
  }
}
