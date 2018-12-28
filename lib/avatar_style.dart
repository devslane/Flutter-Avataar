import 'package:flutter_avataar/enums.dart';

class AvatarStyleType {
  String _avatarType = "Circle";
   getAvatarType(AvatarStyle topType) {
    switch(topType) {
      case AvatarStyle.circle:
       this._avatarType = 'Circle';
       break;
       case AvatarStyle.transparent:
       this._avatarType = 'Transparent';
       break;
       default:
       this._avatarType = 'Circle';
    }
    return this._avatarType;
  }
}