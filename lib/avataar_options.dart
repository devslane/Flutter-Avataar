import 'package:flutter_avataar/enums.dart';

class AvataarOptions {
  AvatarStyle style;
  Top top;
  Accessories accessories;
  HairColor hairColor;
  FacialHair facialHair;
  Cloth clothes;
  ClothColor clothColor;
  Eyes eyes;
  Eyebrow eyebrow;
  Mouth mouth;
  Skin skin;
  HatColor hatColor;
  FacialHairColor facialHairColor;
  Graphic graphic;

  AvataarOptions() {
    style = AvatarStyle.circle;
    top = Top.shorthairfrizzle;
    accessories = Accessories.kurta;
    hairColor = HairColor.brownDark;
    facialHair = FacialHair.moustachemagnum;
    clothes = Cloth.blazerShirt;
    clothColor = ClothColor.gray1;
    eyes = Eyes.wink;
    eyebrow = Eyebrow.angry;
    mouth = Mouth.serious;
    skin = Skin.light;
    hatColor = HatColor.black;
    facialHairColor = FacialHairColor.black;
    graphic = Graphic.skull;
  }
}