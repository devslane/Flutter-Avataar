import 'package:flutter/material.dart';
import 'package:flutter_avataar/avataar_webview.dart';

class AvataarPage extends StatefulWidget {
  @override
  _AvataarPageState createState() => new _AvataarPageState();
}

class _AvataarPageState extends State<AvataarPage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: <Widget>[
            Container(
              child: Align(
              alignment: Alignment.center,
              child: AvataarWebview(),
            ),
            )
          ],
        
    );
  }
}
