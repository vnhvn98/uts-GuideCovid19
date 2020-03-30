import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class PanduanPenanganan extends StatefulWidget {
  @override
  _PanduanPenangananState createState() => _PanduanPenangananState();
}

class _PanduanPenangananState extends State<PanduanPenanganan> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: WebView(
          initialUrl: 'https://drive.google.com/open?id=1gGDKS_f7MCsvD-yEurLe92OY8SkQWwaq',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}