import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class AvataarWebview extends StatefulWidget {
  _AvataarWebviewState createState() => new _AvataarWebviewState();
}

class _AvataarWebviewState extends State<AvataarWebview> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  StreamSubscription<String> _onUrlChanged;
  final _history = [];

  @override
  void initState() {
    flutterWebviewPlugin.close();

    _onUrlChanged = flutterWebviewPlugin.onUrlChanged.listen((String url) {
      if (mounted) {
        setState(() {
          _history.add('onUrlChanged: $url');
        });
      }
    });
    super.initState();
  }

  void dispose() {
    _onUrlChanged.cancel();

    flutterWebviewPlugin.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Click Me to open Webview'),
      onPressed: () {
        setState(() {
          flutterWebviewPlugin.launch(
            'https://avataaars.io/?avatarStyle=Transparent&accessoriesType=Round&hatColor=Blue01&facialHairType=BeardMedium&facialHairColor=Blonde&clotheType=BlazerShirt&eyeType=Default&eyebrowType=Default&mouthType=Default&skinColor=Light',
            rect: new Rect.fromLTWH(
                0.0, 100.0, MediaQuery.of(context).size.width, 300.0),
          );
        });
      }
    );}
}
