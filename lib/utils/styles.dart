import 'package:flutter/material.dart';
import 'package:flutter_avataar/avatar/enums.dart';

abstract class Styles {
  static const _accessoriesIcon = IconData(
    0xe901,
    fontFamily: "icomoon",
  );
  static const _accessoriesIconSelected = IconData(
    0xe900,
    fontFamily: "icomoon",
  );
  static const _eyeIcon = IconData(
    0xe905,
    fontFamily: "icomoon",
  );
  static const _eyeSelectedIcon = IconData(
    0xe902,
    fontFamily: "icomoon",
  );
  static const _eyebrowIcon = IconData(
    0xe904,
    fontFamily: "icomoon",
  );
  static const _eyebrowIconSelected = IconData(
    0xe903,
    fontFamily: "icomoon",
  );
  static const _facialHairIcon = IconData(
    0xe909,
    fontFamily: "icomoon",
  );
  static const _facialHairSelectedIcon = IconData(
    0xe906,
    fontFamily: "icomoon",
  );
  static const _facialHairColorIcon = IconData(
    0xe908,
    fontFamily: "icomoon",
  );
  static const _facialHairColorSelectedIcon = IconData(
    0xe907,
    fontFamily: "icomoon",
  );
  static const _graphicsIcon = IconData(
    0xe90b,
    fontFamily: "icomoon",
  );
  static const _graphicsSelectedIcon = IconData(
    0xe90a,
    fontFamily: "icomoon",
  );
  static const _hairColorIcon = IconData(
    0xe90d,
    fontFamily: "icomoon",
  );
  static const _hairColorSelectedIcon = IconData(
    0xe90c,
    fontFamily: "icomoon",
  );
  static const _hatColorIcon = IconData(
    0xe90f,
    fontFamily: "icomoon",
  );
  static const _hatColorSelectedIcon = IconData(
    0xe90e,
    fontFamily: "icomoon",
  );
  static const _mouthIcon = IconData(
    0xe911,
    fontFamily: "icomoon",
  );
  static const _mouthSelectedIcon = IconData(
    0xe910,
    fontFamily: "icomoon",
  );
  static const _skinIcon = IconData(
    0xe913,
    fontFamily: "icomoon",
  );
  static const _skinSelectedIcon = IconData(
    0xe912,
    fontFamily: "icomoon",
  );
  static const _topIcon = IconData(
    0xe915,
    fontFamily: "icomoon",
  );
  static const _topSelectedIcon = IconData(
    0xe914,
    fontFamily: "icomoon",
  );
  static const _clothesIcon = IconData(
    0xe919,
    fontFamily: "icomoon",
  );
  static const _clothesSelectedIcon = IconData(
    0xe916,
    fontFamily: "icomoon",
  );
  static const _clothesColorIcon = IconData(
    0xe918,
    fontFamily: "icomoon",
  );
  static const _clothesColorSelectedIcon = IconData(
    0xe917,
    fontFamily: "icomoon",
  );

  static _getIconData(dynamic type, bool selected) {
    switch (type) {
      case Accessories:
        if (selected) {
          return _accessoriesIconSelected;
        } else {
          return _accessoriesIcon;
        }
        break;
      case Top:
        if (selected) {
          return _topSelectedIcon;
        } else {
          return _topIcon;
        }
        break;
      case HatColor:
        if (selected) {
          return _hatColorSelectedIcon;
        } else {
          return _hatColorIcon;
        }
        break;
      case HairColor:
        if (selected) {
          return _hairColorSelectedIcon;
        } else {
          return _hairColorIcon;
        }
        break;
      case FacialHair:
        if (selected) {
          return _facialHairSelectedIcon;
        } else {
          return _facialHairIcon;
        }
        break;
      case FacialHairColor:
        if (selected) {
          return _facialHairColorSelectedIcon;
        } else {
          return _facialHairColorIcon;
        }
        break;
      case Cloth:
        if (selected) {
          return _clothesSelectedIcon;
        } else {
          return _clothesIcon;
        }
        break;
      case ClothColor:
        if (selected) {
          return _clothesColorSelectedIcon;
        } else {
          return _clothesColorIcon;
        }
        break;
      case Graphic:
        if (selected) {
          return _graphicsSelectedIcon;
        } else {
          return _graphicsIcon;
        }
        break;
      case Eyes:
        if (selected) {
          return _eyeSelectedIcon;
        } else {
          return _eyeIcon;
        }
        break;
      case Eyebrow:
        if (selected) {
          return _eyebrowIconSelected;
        } else {
          return _eyebrowIcon;
        }
        break;
      case Mouth:
        if (selected) {
          return _mouthSelectedIcon;
        } else {
          return _mouthIcon;
        }
        break;
      case Skin:
        if (selected) {
          return _skinSelectedIcon;
        } else {
          return _skinIcon;
        }
        break;
    }
  }
  static Icon getIcon (dynamic type, bool selected,BuildContext context) {
    double size = 30.0;
    if (type == Accessories) {
      size = 20.0;
    }
    if(selected) {
      return Icon(_getIconData(type, selected), size: size * 1.25, color: Theme.of(context).primaryColor,);
    } else {
      return Icon(_getIconData(type, selected), size: size, color: Theme.of(context).primaryColor,);
    }
  }
}
