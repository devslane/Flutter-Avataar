import 'package:flutter/material.dart';
import 'package:flutter_avataar/custom_check_box.dart';

class CustomGridBottomSheet extends StatefulWidget {
  CustomGridBottomSheet({this.gridData, this.currentSelected});

  final List<String> gridData; // LIST OF URLS OF INDIVIDUAL AVATAR STYLE
  final Function currentSelected;

  @override
  _CustomGridBottomSheetState createState() {
    return _CustomGridBottomSheetState();
  }
}

class _CustomGridBottomSheetState extends State<CustomGridBottomSheet> {
  int _selectedImageIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: new GridView.count(
          crossAxisCount: 3, children: _getTiles(widget.gridData)),
    );
  }

  List<Widget> _getTiles(List<String> imageUrlList) {
    print('_get tiles called');
    final List<Widget> tiles = <Widget>[];
    for (int i = 0; i < imageUrlList.length; i++) {
      tiles.add(
        new GestureDetector(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: Stack(
              children: <Widget>[
                GridTile(
                    child: new Image.asset(
                  imageUrlList[i],
                  height: 280,
                  width: 280,
                  fit: BoxFit.cover,
                )),
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
              widget.currentSelected(widget.gridData[i]);
            });
          },
        ),
      );
    }
    return tiles;
  }
}
