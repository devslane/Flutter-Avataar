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
  // Face face;

  AvataarOptions({
    this.avatarStyle = AvatarStyle.transparent,
    this.top = Top.shorthairfrizzle,
    this.accessories = Accessories.kurta,
    this.hairColor = HairColor.brownDark,
    this.facialHair = FacialHair.moustachemagnum,
    this.clothes = Cloth.blazerShirt,
    this.clothColor = ClothColor.gray1,
    this.eyes = Eyes.wink,
    this.eyebrow = Eyebrow.angry,
    this.mouth = Mouth.serious,
    this.skin = Skin.light,
    this.hatColor = HatColor.black,
    this.facialHairColor = FacialHairColor.black,
    this.graphic = Graphic.skull,
    // this.face = Face.Eyes
  }) {
    print('THE LIST IN TOP ENUM IS');
    print(Top.values.toList());
  }
}