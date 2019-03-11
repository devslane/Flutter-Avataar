import 'package:flutter/material.dart';
import 'package:flutter_avataar/utils/styles.dart';

class CustomPageViewBar extends StatefulWidget {
  final List<dynamic> typeList;
  final Function showOnePageView;
  final int preSelectedIndex;

  CustomPageViewBar(this.typeList,
      {this.showOnePageView, this.preSelectedIndex});

  @override
  _CustomPageViewBarState createState() {
    return new _CustomPageViewBarState();
  }
}

class _CustomPageViewBarState extends State<CustomPageViewBar> {
  int selectedIndex;
  ScrollController controller = new ScrollController();

  @override
  void initState() {
    selectedIndex = widget.preSelectedIndex;
    print("TypeList" + widget.typeList.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    selectedIndex = widget.preSelectedIndex;
    if (controller.hasClients) {
      print(controller.position.maxScrollExtent);
      controller.animateTo(30.0 * selectedIndex,
          duration: Duration(milliseconds: 200), curve: Curves.easeIn);
    }
    return Container(
      margin: EdgeInsets.only(bottom: 5.0),
      child: ListView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int i) {
          return GestureDetector(
            onTap: () {
              onTabChange(i);
            },
            child: selectedIndex == i
                ? new InkWell(
                    child: Container(
                        child: _getIconData(widget.typeList[i], context,
                            selected: true)),
                  )
                : new InkWell(
                    child: Container(
                        child: _getIconData(widget.typeList[i], context)),
                  ),
          );
        },
        itemExtent: 65.0,
        itemCount: widget.typeList.length,
      ),
    );
  }

  void onTabChange(int i) {
    setState(() {
      selectedIndex = i;
      widget.showOnePageView(i);
    });
  }

  Icon _getIconData(dynamic type, BuildContext context,
      {bool selected = false}) {
    return Styles.getIcon(type, selected, context);
  }
}
