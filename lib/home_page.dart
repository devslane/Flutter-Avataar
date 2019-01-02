import 'package:flutter/material.dart';
import 'package:flutter_avataar/utils/avataar_view.dart';
import 'package:flutter_avataar/avatar/avatar.dart';
import 'package:flutter_avataar/avatar/enums.dart';
import 'package:flutter_avataar/utils/custom_ui/custom_grid_bottom_sheet.dart';
import 'package:flutter_avataar/utils/custom_ui/custom_page_view_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Options options = new Options();
  PageController pageController = new PageController(viewportFraction: 1.0);
  int _preSelectedIndex = 0;

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
        title: Text('Avataar'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Column(children: <Widget>[
          new Container(
            height: MediaQuery.of(context).size.height / 2.5,
            margin: EdgeInsets.only(bottom: 8.0),
            child: new Avataarview(_getAvataarUrl(options)),
          ),
          Container(
            color: Colors.white,
            height: 340.0,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: PageView.builder(
                controller: pageController,
                physics: BouncingScrollPhysics(),
                itemCount: avatarCharacteristics.length,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int index) {
                  _changeCurrentPageIndex(index);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: CustomGridBottomSheet(
                      options: options,
                      type: avatarCharacteristics[index],
                      changeCurrentSelected: _changeCurrentSelected,
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: CustomPageViewBar(avatarCharacteristics,
                showOnePageView: _navigateToPage,
                preSelectedIndex: _preSelectedIndex),
          )
        ]),
      ),
      // bottomNavigationBar: CustomListView(avatarCharacteristics),
    );
  }

  _changeCurrentPageIndex(int index) {
    setState(() {
      _preSelectedIndex = index;
    });
  }

  _navigateToPage(int index) {
    pageController.jumpToPage(index);
    setState(() {
      _preSelectedIndex = index;
    });
  }

  void _showModalBottomSheet(BuildContext context, dynamic tabSelected) {
    showBottomSheet(
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
