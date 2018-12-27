import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class AvataarWebview extends StatefulWidget {
  _AvataarWebviewState createState() => new _AvataarWebviewState();
}

class _AvataarWebviewState extends State<AvataarWebview> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  void initState() {
    flutterWebviewPlugin.close();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Click Me to open Webview'),
      onPressed: () {
        setState(() {
          flutterWebviewPlugin.launch(
            'https://flutter.io',
            rect: new Rect.fromLTWH(
                0.0, 100.0, MediaQuery.of(context).size.width, 300.0),
          );
        });
      },
    );
  }
}
