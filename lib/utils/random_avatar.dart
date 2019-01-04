import 'package:flutter_avataar/avatar/avatar.dart';
import 'package:flutter_avataar/avatar/enums.dart';
import 'dart:math';

import 'package:flutter_avataar/utils/gender.dart';

class RandomAvatar {
  final Gender gender;
  List<Top> maleTop = new List();
  List<Top> femaleTop = new List();
  RandomAvatar(this.gender) {
    maleTop.addAll([
      Top.nohair,
      Top.shorthairfrizzle,
      Top.shorthairshaggymullet,
      Top.shorthairshortcurly,
      Top.eyepatch,
      Top.hat,
      Top.longhairbun,
      Top.shorthairdreads01,
      Top.shorthairdreads02,
      Top.shorthairshortflat,
      Top.shorthairshortround,
      Top.shorthairshortwaved,
      Top.shorthairsides,
      Top.shorthairthecaesar,
      Top.shorthairthecaesarsidepart,
      Top.turban,
      Top.winterhat1,
      Top.winterhat2,
      Top.winterhat3,
      Top.winterhat4
    ]);
    femaleTop = Top.values.toList();
    maleTop.forEach((mTop) {
      femaleTop.remove(mTop);
    });
  }
   Options getRandomAvatar() {
     switch(gender) {
       case Gender.male:
        return _getMaleOptions();
       case Gender.female:
         return _getFemaleOptions();

     }
   }
  Top _getRandomMaleTop() {
     int index = new Random().nextInt(maleTop.length);
     return maleTop[index];
  }
  Top _getRandomFemaleTop() {
    print('Female top list');
    print(femaleTop);
    return femaleTop[new Random().nextInt(femaleTop.length)];
  }

  Accessories _getRandomAccessories() {
     return Accessories.values.toList()[new Random().nextInt(Accessories.values.toList().length)];
  }
  HairColor _getRandomHairColor() {
    return HairColor.values.toList()[new Random().nextInt(HairColor.values.toList().length)];
  }
  FacialHair _getRandomFacialHair() {
    return FacialHair.values.toList()[new Random().nextInt(FacialHair.values.toList().length)];
  }

  Cloth _getRandomCloth() {
    return Cloth.values.toList()[new Random().nextInt(Cloth.values.toList().length)];
  }

  ClothColor _getRandomClothColor() {
    return ClothColor.values.toList()[new Random().nextInt(ClothColor.values.toList().length)];
  }
  Eyes _getRandomEyes() {
    return Eyes.values.toList()[new Random().nextInt(Eyes.values.toList().length)];
  }
  Eyebrow _getRandomEyebrow() {
     return Eyebrow.values.toList()[new Random().nextInt(Eyebrow.values.toList().length)];
  }
  Mouth _getRandomMouth() {
    return Mouth.values.toList()[new Random().nextInt(Mouth.values.toList().length)];
  }
  Skin _getRandomSkin() {
    return Skin.values.toList()[new Random().nextInt(Skin.values.toList().length)];
  }
  HatColor _getRandomHatColor() {
    return HatColor.values.toList()[new Random().nextInt(HatColor.values.toList().length)];
  }
  FacialHairColor _getRandomFacialHairColor() {
    return FacialHairColor.values.toList()[new Random().nextInt(FacialHairColor.values.toList().length)];
  }
  Graphic _getRandomGraphic() {
    return Graphic.values.toList()[new Random().nextInt(Graphic.values.toList().length)];
  }
  Options _getMaleOptions() {
    Options options = new Options();
    options.top = _getRandomMaleTop();
    options.accessories = _getRandomAccessories();
    options.hairColor = _getRandomHairColor();
    options.facialHair = _getRandomFacialHair();
    options.clothes = _getRandomCloth();
    options.clothColor= _getRandomClothColor();
    options.eyes = _getRandomEyes();
    options.eyebrow = _getRandomEyebrow();
    options.mouth = _getRandomMouth();
    options.skin = _getRandomSkin();
    options.hatColor = _getRandomHatColor();
    options.facialHairColor = _getRandomFacialHairColor();
    options.graphic = _getRandomGraphic();
    return options;
  }
  Options _getFemaleOptions() {
    Options options = new Options();
    options.top = _getRandomFemaleTop();
    options.facialHair = FacialHair.blank;
    options.accessories = _getRandomAccessories();
    options.hairColor = _getRandomHairColor();
    options.clothes = _getRandomCloth();
    options.clothColor= _getRandomClothColor();
    options.eyes = _getRandomEyes();
    options.eyebrow = _getRandomEyebrow();
    options.mouth = _getRandomMouth();
    options.skin = _getRandomSkin();
    options.hatColor = _getRandomHatColor();
    options.facialHairColor = _getRandomFacialHairColor();
    options.graphic = _getRandomGraphic();
    return options;
  }
}
