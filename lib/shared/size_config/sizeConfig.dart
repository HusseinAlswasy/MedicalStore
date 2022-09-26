import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SizeConfig{
  static double? screenWidth;
  static double? screenHeight;
  static double? deafultSize;
  static Orientation? orientation;

  void init(BuildContext context){
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    deafultSize  =orientation ==Orientation.landscape?
        screenHeight!*.024
        : screenWidth!*.024;
  }
}

