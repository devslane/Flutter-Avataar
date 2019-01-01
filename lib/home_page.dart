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
  List<dynamic> avatarCharacteristics = [
    Top,
    Accessories,
    HairColor,
    FacialHair,
    Cloth,
    ClothColor,
    Eyes,
    Eyebrow,
    Mouth,
    Skin,
    HatColor,
    FacialHairColor,
    Graphic,
    Face,
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
                margin: EdgeInsets.only(bottom: 8.0),
                child: new AvataarWebview(_getAvataarUrl(options)),
              ),
              new Expanded(
                child: new Container(
                  child: new GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 1.0,
                      padding: const EdgeInsets.all(4.0),
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                      children:
                          avatarCharacteristics.map((dynamic characteristic) {
                        return new Container(
                          child: new Card(
                            color: Colors.white,
                            child: new FlatButton(
                              onPressed: () {
                                _showModalBottomSheet(context, characteristic);
                              },
                              child: new Text(
                                characteristic.toString(),
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      }).toList()),
                ),
              ),
            ],
          ),
        ));
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
