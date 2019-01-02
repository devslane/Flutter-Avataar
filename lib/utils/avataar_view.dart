import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Avataarview extends StatefulWidget {
  Avataarview(this.url);
  final String url;
  _AvataarviewState createState() => new _AvataarviewState();
}

class _AvataarviewState extends State<Avataarview> {
  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Key key = new Key(widget.url);
    return new Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width / 1.716,
      height: MediaQuery.of(context).size.height / 2.84,
      child: new WebView(
        key: key,
        initialUrl:
            Uri.dataFromString(widget.url, mimeType: "text/html").toString(),
        onWebViewCreated: (contrller) {},
      ),
    );
  }
}
