import 'package:flutter/material.dart';
import 'package:flutter_avataar/avataar_page.dart';
import 'package:flutter_avataar/custom_grid_bottom_sheet.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> avatarCharacteristics = [
    "Avatar Style",
    "Top",
    "Accessories",
    "Facial Hair",
    "Facial Hair Color",
    "Clothes",
    "Color Fabric",
    "Eyes",
    "Eyebrow",
    "Mouth",
    "Skin"
  ];

  Map<dynamic, String> currentSelected = {
    "avatar_style": "Circle",
    "top": "ShortHairShaggyMullet",
    "accessories": "Kurt",
    "hair_color": "BrownDark",
    "facial_hair": "MoustacheMagnum",
    "facial_hair_color": "Red",
    "clothes": "GraphicShirt",
    "color_fabric": "PastelRed",
    "graphic": "Skull",
    "eyes": "Close",
    "eyebrow": "Angry",
    "mouth": "Concerned",
    "skin": "Tanned",
  };

  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('kinzy'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          new Container(
            color: Colors.blue,
            height: 300.0,
            margin: EdgeInsets.only(bottom: 30.0),
            child: AvataarPage(),
          ),
          new Container(
            height: 350.0,
            child: new GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(4.0),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                children: avatarCharacteristics.map((String characteristic) {
                  return new Container(
                    child: new Card(
                      color: Colors.white,
                      child: new FlatButton(
                        onPressed: () {
                          _showModalBottomSheet(context, characteristic);
                        },
                        child: new Text(
                          characteristic,
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                }).toList()),
          )
        ],
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context, String tabSelected) {
    List<String> gridData = [
      "assets/coffee.jpeg",
      "assets/girl.jpg",
      "assets/coffee.jpeg",
      "assets/girl.jpg",
      "assets/coffee.jpeg",
      "assets/girl.jpg",
      "assets/coffee.jpeg",
      "assets/girl.jpg",
      "assets/coffee.jpeg",
      "assets/girl.jpg",
      "assets/coffee.jpeg",
      "assets/girl.jpg"
    ];

    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return CustomGridBottomSheet(gridData);
        });
  }

  
}
