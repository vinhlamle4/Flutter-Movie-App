import 'package:flutter/material.dart';

class BorderRadiusUtils {
  static BorderRadius circular8() {
    return BorderRadius.circular(8);
  }
  static BorderRadius circular16() {
    return BorderRadius.circular(16);
  }
  static BorderRadius circular24() {
    return BorderRadius.circular(24);
  }
  static BorderRadius circular32() {
    return BorderRadius.circular(32);
  }

  static BorderRadius verticalTop48() {
    return const BorderRadius.vertical(top: Radius.circular(48));
  }
}
