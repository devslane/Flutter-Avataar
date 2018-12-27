import 'package:flutter/material.dart';
import 'package:flutter_avataar/avataar_page.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AvataarPage(),
      // routes: {
      //   '/widget': (context) => new WebviewScaffold(
      //     url: 'https://www.google.com',
      //     appBar: AppBar(
      //       title: Text('Now in Webview'),
      //     ),
      //   )
      // },
    );
  }
}

