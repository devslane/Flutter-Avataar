import 'package:flutter/material.dart';
import 'package:flutter_avataar/avatar/avatar.dart';
import 'package:flutter_avataar/avatar/enums.dart';
import 'package:flutter_avataar/models/select_item.dart';
import 'package:flutter_avataar/utils/colors.dart';
import 'package:flutter_avataar/utils/custom_ui/custom_check_box.dart';

class CustomGridBottomSheet extends StatefulWidget {
  CustomGridBottomSheet({this.options, this.type, this.changeCurrentSelected});
  final Options options;
  final dynamic type; // LIST OF URLS OF INDIVIDUAL AVATAR STYLE
  final Function changeCurrentSelected;

  @override
  _CustomGridBottomSheetState createState() {
    return _CustomGridBottomSheetState();
  }
}

class _CustomGridBottomSheetState extends State<CustomGridBottomSheet> {
  int _selectedImageIndex;
  List<SelectItem> itemList = new List();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480.0,
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      child: new Stack(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0)),
            elevation: 24.0,
            child: new Container(
              color: Colors.white,
//              height: 250.0,
              margin: EdgeInsets.only(top: 30.0),
              child: new GridView.count(
                crossAxisCount: 4,
                children: _getTiles(),
              ),
            ),
          ),
          new Align(
              alignment: Alignment.topRight,
              child: new Container(
                margin: EdgeInsets.only(top: 5.0, right: 10.0),
                child: GestureDetector(
                  child: new Icon(
                    Icons.clear,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ))
        ],
      ),
    );
  }

  List<Widget> _getTiles() {
    itemList = [];
    print('_get tiles called');
    final List<Widget> tiles = <Widget>[];
    print(widget.options);
    switch (widget.type) {
      case Top:
        Top.values.toList().forEach((value) {
          SelectItem item = new SelectItem(value,
              imagePath:
                  "assets/Top/" + value.toString().split('.')[1] + ".png");
          itemList.add(item);
        });
        break;
      case Accessories:
        print(AvatarStyle.values.toList());
        Accessories.values.toList().forEach((value) {
          SelectItem item = new SelectItem(value,
              imagePath: "assets/Accessories/" +
                  value.toString().split('.')[1] +
                  ".png");
          itemList.add(item);
        });
        break;
      case HairColor:
        HairColor.values.toList().forEach((value) {
          SelectItem item =
              new SelectItem(value, color: ColorMapping(value).getColor());
          itemList.add(item);
        });
        break;
      case FacialHair:
        FacialHair.values.toList().forEach((value) {
          SelectItem item = new SelectItem(value,
              imagePath: "assets/FacialHair/" +
                  value.toString().split('.')[1] +
                  ".png");
          itemList.add(item);
        });
        break;
      case Cloth:
        Cloth.values.toList().forEach((value) {
          SelectItem item = new SelectItem(value,
              imagePath: "assets/ClotheType/" +
                  value.toString().split('.')[1] +
                  ".png");
          itemList.add(item);
        });
        break;
      case ClothColor:
        ClothColor.values.toList().forEach((value) {
          SelectItem item =
              new SelectItem(value, color: ColorMapping(value).getColor());
          itemList.add(item);
        });
        break;
      case Eyes:
        Eyes.values.toList().forEach((value) {
          SelectItem item = new SelectItem(value,
              imagePath:
                  "assets/Eyes/" + value.toString().split('.')[1] + ".png");
          itemList.add(item);
        });
        break;
      case Eyebrow:
        Eyebrow.values.toList().forEach((value) {
          SelectItem item = new SelectItem(value,
              imagePath:
                  "assets/Eyebrow/" + value.toString().split('.')[1] + ".png");
          itemList.add(item);
        });
        break;
      case Mouth:
        Mouth.values.toList().forEach((value) {
          SelectItem item = new SelectItem(value,
              imagePath:
                  "assets/Mouth/" + value.toString().split('.')[1] + ".png");
          itemList.add(item);
        });
        break;
      case Skin:
        Skin.values.toList().forEach((value) {
          SelectItem item = new SelectItem(value,
              imagePath:
                  "assets/Skin/" + value.toString().split('.')[1] + ".png");
          itemList.add(item);
        });
        break;
      case HatColor:
        HatColor.values.toList().forEach((value) {
          SelectItem item =
              new SelectItem(value, color: ColorMapping(value).getColor());
          itemList.add(item);
        });
        break;
      case FacialHairColor:
        FacialHairColor.values.toList().forEach((value) {
          SelectItem item =
              new SelectItem(value, color: ColorMapping(value).getColor());
          itemList.add(item);
        });
        break;
      case Graphic:
        Graphic.values.toList().forEach((value) {
          SelectItem item = new SelectItem(value,
              imagePath:
                  "assets/Graphic/" + value.toString().split('.')[1] + ".png");
          itemList.add(item);
        });
        break;
      // case Face:
      //   Face.values.toList().forEach((value) {
      //     SelectItem item = new SelectItem(value, "assets/avataaars.png");
      //     itemList.add(item);
      //   });
      //   break;
    }
    for (int i = 0; i < itemList.length; i++) {
      tiles.add(
        new GestureDetector(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: Stack(
              children: <Widget>[
                itemList[i].imagePath != null
                    ? GridTile(
                        child: Card(
                          color: Colors.white30,
                          child: new Image.asset(
                            itemList[i].imagePath,
                            height: 280,
                            width: 280,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      )
                    : GridTile(
                        child: Card(
                          color: itemList[i].color,
                          child: Container(
                              // child: Align(
                              //   alignment: Alignment.center,
                              //   child: Text(itemList[i].type.toString().split('.')[1].toUpperCase()),
                              // ),
                              ),
                        ),
                      ),
                _selectedImageIndex == i
                    ? Align(
                        alignment: Alignment.topRight,
                        child: new CustomCheckBox(),
                      )
                    : SizedBox(),
              ],
            ),
          ),
          onTap: () {
            print('on tap called');
            setState(() {
              print('set state from tap called');
              _selectedImageIndex = i;
            });
            _updateOptions();
          },
        ),
      );
    }
    return tiles;
  }

  _updateOptions() {
    switch (widget.type) {
      case Top:
        widget.options.top = itemList[_selectedImageIndex].type;
        break;
      case Accessories:
        widget.options.accessories = itemList[_selectedImageIndex].type;
        break;
      case HairColor:
        widget.options.hairColor = itemList[_selectedImageIndex].type;
        break;
      case FacialHair:
        widget.options.facialHair = itemList[_selectedImageIndex].type;
        break;
      case Cloth:
        widget.options.clothes = itemList[_selectedImageIndex].type;
        break;
      case ClothColor:
        widget.options.clothColor = itemList[_selectedImageIndex].type;
        break;
      case Eyes:
        widget.options.eyes = itemList[_selectedImageIndex].type;
        break;
      case Eyebrow:
        widget.options.eyebrow = itemList[_selectedImageIndex].type;
        break;
      case Mouth:
        widget.options.mouth = itemList[_selectedImageIndex].type;
        break;
      case Skin:
        widget.options.skin = itemList[_selectedImageIndex].type;
        break;
      case HatColor:
        widget.options.hatColor = itemList[_selectedImageIndex].type;
        break;
      case FacialHairColor:
        widget.options.facialHairColor = itemList[_selectedImageIndex].type;
        break;
      case Graphic:
        widget.options.graphic = itemList[_selectedImageIndex].type;
        break;
      // case Face:
      //   widget.options.face = itemList[_selectedImageIndex].type;
      //   break;
    }
    widget.changeCurrentSelected(widget.options);
  }
}
