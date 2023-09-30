import 'package:flutter/material.dart';

class ColorsProvider extends ChangeNotifier {
  int current = 0;

  List colors = [
    Colors.red,
    Colors.amber,
    Colors.pink,
    Colors.blue,
    Colors.green
  ];
  void themeChange() {
    current = (current + 1) % colors.length;
    notifyListeners();
  }
}
