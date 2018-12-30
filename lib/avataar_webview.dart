import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AvataarWebview extends StatefulWidget {
  AvataarWebview(this.url);
  final String url;
  _AvataarWebviewState createState() => new _AvataarWebviewState();
}

class _AvataarWebviewState extends State<AvataarWebview> {
  final String baseUrl = 'https://avataaars.io/?';

  @override
  void initState() {
   
    super.initState();
  }

  void dispose() {

    super.dispose();
  }




  @override
  Widget build(BuildContext context) {

 print('URLLLLLLLLLLLLLL'+ baseUrl + widget.url);
    return new Container(
      color: Colors.transparent,
      width: 250,
      height: 280,
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: WebView(
        initialUrl: baseUrl + widget.url,
        onWebViewCreated: (contrller) {
          print('webview created');
        },
      ),
      // height: 300.0
    );
  }
}
