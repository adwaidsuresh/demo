import 'package:flutter/material.dart';

extension ResponsiveExtension on BuildContext {
  double width(double width) {
    return MediaQuery.sizeOf(this).width * (width / 393);
  }

  double height(double height) {
    return MediaQuery.sizeOf(this).height * (height / 852);
  }
}