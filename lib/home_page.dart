import 'package:flutter/material.dart';
import 'package:flutter_avataar/avataar_options.dart';
import 'package:flutter_avataar/avataar_webview.dart';
import 'package:flutter_avataar/custom_grid_bottom_sheet.dart';
import 'package:flutter_avataar/enums.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AvataarOptions options = new AvataarOptions();
  List<String> avatarCharacteristics = [
    "top",
    "accessories",
    "facialHair",
    "facialHairColor",
    "clothes",
    "colorFabric",
    "graphic"
    "eyes",
    "eyebrow",
    "mouth",
    "skin",
    "face"
  ];

  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('kinzy'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              new Container(
                height: 280,
                margin: EdgeInsets.only(bottom: 30.0),
                child: new AvataarWebview(_getAvataarUrl(options)),
              ),
              new Container(
                height: MediaQuery.of(context).size.height - 450,
                child: new GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0,
                    padding: const EdgeInsets.all(4.0),
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                    children:
                        avatarCharacteristics.map((String characteristic) {
                      return new Container(
                        child: new Card(
                          color: Colors.white,
                          child: new FlatButton(
                            onPressed: () {
                              _showModalBottomSheet(context,
                                  getCharacteristicEnumType(characteristic));
                            },
                            child: new Text(
                              characteristic,
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    }).toList()),
              )
            ],
          ),
        ));
  }

  dynamic getCharacteristicEnumType(String type) {
    switch (type) {
      case "top":
        return Top;
        break;
      case "accessories":
        return Accessories;
        break;
      case "facialHair":
        return FacialHair;
        break;
      case "facialHairColor":
        return FacialHairColor;
        break;
      case "clothes":
        return Cloth;
        break;
      case "colorFabric":
        return ClothColor;
        break;
      case "graphic":
        return Graphic;
        break;
      case "eyes":
        return Eyes;
        break;
      case "eyebrow":
        return Eyebrow;
        break;
      case "mouth":
        return Mouth;
        break;
      case "skin":
        return Skin;
        break;
      case "face":
        return Face;
        break;
      default :
       return AvatarStyle;  
    }
  }

  void _showModalBottomSheet(BuildContext context, dynamic tabSelected) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return CustomGridBottomSheet(
            options: options,
            type: tabSelected,
            changeCurrentSelected: _changeCurrentSelected,
          );
        });
  }

  void _changeCurrentSelected(AvataarOptions value) {
    setState(() {
      print('value on changing item');
      print(value);
      this.options = value;
    });
  }

  String _getAvataarUrl(AvataarOptions options) {
    String urlOptions;
    urlOptions = 'accessoriesType' +
        _getOptionString(options.accessories) +
        'avatarStyle' +
        _getOptionString(options.avatarStyle) +
        'clotheColor' +
        _getOptionString(options.clothColor) +
        'clotheType' +
        _getOptionString(options.clothes) +
        'eyeType' +
        _getOptionString(options.eyes) +
        'eyebrowType' +
        _getOptionString(options.eyebrow) +
        'facialHairColor' +
        _getOptionString(options.facialHairColor) +
        'facialHairType' +
        _getOptionString(options.facialHair) +
        'graphicType' +
        _getOptionString(options.graphic) +
        'hairColor' +
        _getOptionString(options.hairColor) +
        'mouthType' +
        _getOptionString(options.mouth) +
        'skinColor' +
        _getOptionString(options.skin) +
        'topType' +
        _getOptionString(options.top);
    return urlOptions;
  }

  String _getOptionString(dynamic innerOption) {
    return '=' + innerOption.toString().split('.')[1] + '&';
  }
}
