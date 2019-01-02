import 'package:flutter/material.dart';

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    selectedIndex = widget.preSelectedIndex;
    if (controller.hasClients) {
      if (selectedIndex > 5) {
        print(selectedIndex);
        controller.animateTo(controller.position.maxScrollExtent,
            duration: Duration(milliseconds: 600), curve: Curves.easeIn);
      }
      if (selectedIndex < 6) {
        controller.animateTo(controller.position.minScrollExtent,
            duration: Duration(milliseconds: 600), curve: Curves.easeIn);
      }
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
                ? new SizedBox(
                    child: Container(
                      child: new Icon(Icons.favorite,
                          size: 35.0, color: Colors.red),
                    ),
                  )
                : new InkWell(
                    child: Container(
                      alignment: AlignmentDirectional.center,
                      child: new Icon(Icons.face,
                          size: 30.0, color: Theme.of(context).primaryColor),
                    ),
                  ),
          );
        },
        itemExtent: 60.0,
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
}
