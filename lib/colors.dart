import 'package:flutter/material.dart';

class ColorMapping {
  final dynamic type;
  ColorMapping(this.type);
  Color getColor() {
    Color color;
    switch (type.toString().split('.')[1]) {
      case "black":
        color = Colors.black;
        break;
      case "auburn":
        color = Color(0xFFA55728);
        break;
      case "blonde":
        color = Color(0xFFB58143);
        break;
      case "blondeGolden":
        color = Color(0xFFD6B370);
        break;
      case "brown":
        color = Color(0xFF724133);
        break;
      case "brownDark":
        color = Color(0xFF4A312C);
        break;
      case "pastelPink":
        color = Color(0xFFF59797);
        break;
      case "platinum":
        color = Color(0xFFECDCBF);
        break;
      case "red":
        color = Color(0xFFC93305);
        break;
      case "silverGray":
        color = Color(0xFFE8E1E1);
        break;
      case "blue01":
      case "blue1":
        color = Color(0xFF65C9FF);
        break;
      case "blue02":
      case "blue2":
        color = Color(0xFF5199E4);
        break;
      case "blue03":
      case "blue3":
        color = Color(0xFF25557C);
        break;
      case "gray01":
      case "gray1":
        color = Color(0xFFE6E6E6);
        break;
      case "gray02":
      case "gray2":
        color = Color(0xFF929598);
        break;
      case "heather":
        color = Color(0xFF3C4F5C);
        break;
      case "pastelblue":
      case "pastelBlue":
        color = Color(0xFFB1E2FF);
        break;
      case "pastelgreen":
      case "pastelGreen":
        color = Color(0xFFA7FFC4);
        break;
      case "pastelorange":
      case "pastelOrange":
        color = Color(0xFFFFDEB5);
        break;
      case "pastelred":
      case "pastelRed":
      color = Color(0xFFFFAFB9);
        break;
      case "pastelyellow":
      case "pastelYellow":
      color = Color(0xFFFFFFB1);
        break;
      case "pink":
      color = Color(0xFFFF488E);
        break;
      case "white":
      color = Colors.white;
        break;
    }
    return color;
  }
}