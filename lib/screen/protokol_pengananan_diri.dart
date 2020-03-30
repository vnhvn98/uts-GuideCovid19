import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class ProtokolPenangananDiri extends StatefulWidget {
  @override
  _ProtokolPenangananDiriState createState() => _ProtokolPenangananDiriState();
}

class _ProtokolPenangananDiriState extends State<ProtokolPenangananDiri> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: WebView(
          initialUrl: 'https://drive.google.com/open?id=1sXP5HIQR8W2zSotXZZqyyVbFbd7MyyvR',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}