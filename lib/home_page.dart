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
    HatColor,
    HairColor,
    Accessories,
    FacialHair,
    FacialHairColor,
    Cloth,
    ClothColor,
    Graphic,
    Eyes,
    Eyebrow,
    Mouth,
    Skin,
    // Face,
  ];
  List<dynamic> visibleAvatarCharacteristics = new List();

  @override
  Widget build(BuildContext context) {
    print('build called');
    visibleAvatarCharacteristics = [];
    _updateVisibleCharacteristics();
    print(MediaQuery.of(context).size.height);
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
            margin: EdgeInsets.only(bottom: 2.0),
            child: new Avataarview(_getAvataarUrl(options)),
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 2.6,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: PageView.builder(
                controller: pageController,
                physics: BouncingScrollPhysics(),
                itemCount: visibleAvatarCharacteristics.length,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int index) {
                  _changeCurrentPageIndex(index);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: CustomGridBottomSheet(
                      options: options,
                      type: visibleAvatarCharacteristics[index],
                      changeCurrentSelected: _changeCurrentSelected,
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: CustomPageViewBar(visibleAvatarCharacteristics,
                showOnePageView: _navigateToPage,
                preSelectedIndex: _preSelectedIndex),
          )
        ]),
      ),
      // bottomNavigationBar: CustomListView(avatarCharacteristics),
    );
  }

  void _updateVisibleCharacteristics() {
    avatarCharacteristics.forEach((value) {
      visibleAvatarCharacteristics.add(value);
    });

    if (options.top == Top.eyepatch) {
//      options.accessories = Accessories.blank;
      visibleAvatarCharacteristics.remove(Accessories);
    }
    if ((options.top == Top.nohair)||(options.top == Top.eyepatch) || (options.top == Top.hat) ||(options.top == Top.hijab)||(options.top == Top.turban)||(options.top == Top.winterhat1)||(options.top == Top.winterhat2)||(options.top == Top.winterhat3)||(options.top == Top.winterhat4)) {
      visibleAvatarCharacteristics.remove(HairColor);
    }
    if (!((options.top == Top.hijab) || (options.top == Top.turban)||(options.top == Top.winterhat1)||(options.top == Top.winterhat2)||(options.top == Top.winterhat3)||(options.top == Top.winterhat4))) {
      visibleAvatarCharacteristics.remove(HatColor);
    }
    if (options.facialHair == FacialHair.blank) {
      visibleAvatarCharacteristics.remove(FacialHairColor);
    }
    if (options.clothes != Cloth.graphicShirt) {
      visibleAvatarCharacteristics.remove(Graphic);
    }
    if (options.clothes == Cloth.blazerShirt || options.clothes == Cloth.blazerSweater) {
      visibleAvatarCharacteristics.remove(ClothColor);
    }
  }

  void _changeCurrentPageIndex(int index) {
    setState(() {
      _preSelectedIndex = index;
    });
  }

  void _navigateToPage(int index) {
    pageController.jumpToPage(index);
    setState(() {
      _preSelectedIndex = index;
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
