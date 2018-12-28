import 'package:flutter/material.dart';
import 'package:flutter_avataar/avataar_webview.dart';
import 'package:flutter_avataar/custom_grid_bottom_sheet.dart';
import 'package:flutter_avataar/avataar_webview.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String baseUrl = 'https://avataaars.io/';
  String avatarStyle = '';
  String topType = '';
  String accessoriesType = '';
  String clotheColor = '';
  String clotheType = '';
  String eyeType = '';
  String eyebrowType = '';
  String facialHairColor = '';
  String facialHairType = '';
  String mouthType = '';
  String skinColor = '';
  String hairColor = '';
  List<String> avatarCharacteristics = [
    "Avatar Style",
    "Top",
    "Accessories",
    "Facial Hair",
    "Facial Hair Color",
    "Clothes",
    "Color Fabric",
    "Graphic"
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
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              new Container(
                height: 280,
                margin: EdgeInsets.only(bottom: 30.0),
                child: AvataarWebview(_getAvataarUrl()),
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
                              _showModalBottomSheet(context, characteristic);
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

  void _showModalBottomSheet(BuildContext context, String tabSelected) {

    List<String> gridData = new List();

    switch(tabSelected){
      case "Avatar Style":
        gridData.clear();
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        break;
      case "Top":
        gridData.clear();
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        break;
      case "Accessories":
        gridData.clear();
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        break;
      case "Facial Hair":
        gridData.clear();
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        break;
      case "Facial Hair Color":
        gridData.clear();
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        break;
      case "Clothes":
        gridData.clear();
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        break;
      case "Color Fabric":
        gridData.clear();
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        break;
      case "Graphic":
        gridData.clear();
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        break;
      case "Eyes":
        gridData.clear();
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/coffee.jpeg");
        break;
      case "Eyebrow":
        gridData.clear();
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/dbz.jpeg");
        break;
      case "Mouth":
        gridData.clear();
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/girl.jpg");
        break;
      case "Skin":
        gridData.clear();
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        gridData.add("assets/vegeta.jpeg");
        gridData.add("assets/goku.jpeg");
        break;
    }

    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return CustomGridBottomSheet(gridData: gridData,currentSelected: changeCurrentSelected,);
        });
  }

  String _getAvataarUrl() {
    return 'https://avataaars.io/?avatarStyle=Transparent&accessoriesType=Round&hatColor=Blue01&facialHairType=BeardMedium&facialHairColor=Blonde&clotheType=BlazerShirt&eyeType=Default&eyebrowType=Default&mouthType=Default&skinColor=Light';
  }

  void changeCurrentSelected(dynamic value){
    print(value);
    currentSelected["avatar_style"]=value;
    print(currentSelected);
  }

}
