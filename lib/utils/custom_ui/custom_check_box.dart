import 'package:flutter/material.dart';


class CustomCheckBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(0),
      child: new Icon(
        Icons.check,
        color: Colors.white,
        size: 16.0,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          border: Border.all(color: Theme.of(context).primaryColor, width: 2.0)),
    );
  }

}