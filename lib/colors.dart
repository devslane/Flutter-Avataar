import 'package:flutter/material.dart';

class ColorMapping {
  final dynamic type;
  ColorMapping(this.type);
  getColor() {
    switch(type.toString().split('.')[1]) {
      case "black":
      return Colors.black;
      break;
    }
  }
}