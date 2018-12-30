import 'package:flutter_avataar/enums.dart';

class AvataarOptions {
  AvatarStyle avatarStyle;
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

  AvataarOptions({
    this.avatarStyle = AvatarStyle.Transparent,
    this.top = Top.Shorthairfrizzle,
    this.accessories = Accessories.Kurta,
    this.hairColor = HairColor.BrownDark,
    this.facialHair = FacialHair.Moustachemagnum,
    this.clothes = Cloth.BlazerShirt,
    this.clothColor = ClothColor.Gray1,
    this.eyes = Eyes.Wink,
    this.eyebrow = Eyebrow.Angry,
    this.mouth = Mouth.Serious,
    this.skin = Skin.Light,
    this.hatColor = HatColor.Black,
    this.facialHairColor = FacialHairColor.Black,
    this.graphic = Graphic.Skull
  });
}