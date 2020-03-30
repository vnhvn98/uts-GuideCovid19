import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class PanduanDisinfeksi extends StatefulWidget {
  @override
  _PanduanDisinfeksiState createState() => _PanduanDisinfeksiState();
}

class _PanduanDisinfeksiState extends State<PanduanDisinfeksi> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: WebView(
          initialUrl: 'https://drive.google.com/open?id=1hn5QaL95xyoeb_87PyVwMnOLKtFbV08S',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}