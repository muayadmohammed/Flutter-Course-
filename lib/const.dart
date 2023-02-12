import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mytheam extends GetxController {
  static Color color1 = Colors.black;
  bool isSelcted = true;
  static TextStyle t1 = const TextStyle(
    color: Colors.amberAccent,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  void ch() {
    isSelcted = !isSelcted;
    update();
  }
}
