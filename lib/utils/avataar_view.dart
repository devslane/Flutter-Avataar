import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Avataarview extends StatefulWidget {
  Avataarview(this.url);
  final String url;
  _AvataarviewState createState() => new _AvataarviewState();
}

class _AvataarviewState extends State<Avataarview> {
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
    // WebViewController webViewController = new WebViewController();
    Key key = new Key(widget.url);
    return new Container(
      color: Colors.transparent,
      width: 264,
      height: 280,
//      margin: EdgeInsets.symmetric(horizontal: 50),
      child: new WebView(
        key: key,
        initialUrl:
            Uri.dataFromString(widget.url, mimeType: "text/html").toString(),
        // initialUrl: baseUrl + widget.url,
        onWebViewCreated: (contrller) {
          print('webview created');
        },
      ),
      // height: 300.0
    );
  }
}
