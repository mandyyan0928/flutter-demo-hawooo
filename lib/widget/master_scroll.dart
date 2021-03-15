import 'package:flutter/material.dart';

bool displayTop = false;
FloatingActionButton fab;
ScrollController controller ;
var _items = new List<int>();

FloatingActionButton getFab() {
  if (displayTop) {
    return fab;
  }
  return null;
}

