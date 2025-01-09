import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getScreenHeigth() {
    return Get.height;
  }

  static getHeight(double pixels) {
    double x = getScreenHeigth() / pixels;
    return getScreenHeigth() / x;
  }

  static getWidht(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
