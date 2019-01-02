import 'package:flutter/material.dart';
import 'package:flutter_avataar/avataar_webview.dart';
import 'package:flutter_avataar/avatar/avatar.dart';
import 'package:flutter_avataar/avatar/enums.dart';
import 'package:flutter_avataar/custom_grid_bottom_sheet.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Options options = new Options();
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
    // Face,
  ];

  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
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
                            color: Colors.blueAccent.withOpacity(.75),
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

  void _changeCurrentSelected(Options value) {
    setState(() {
      print('value on changing item');
      print(value.accessories);
      this.options = value;
    });
  }

  String _getAvataarUrl(Options options) {
    return getSvg(options);
  }

  String _getOptionString(dynamic innerOption) {
    return '=' + innerOption.toString().split('.')[1] + '&';
  }
}
