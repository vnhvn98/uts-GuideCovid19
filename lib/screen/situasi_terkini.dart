import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class SituasiTerkini extends StatefulWidget {
  @override
  _SituasiTerkiniState createState() => _SituasiTerkiniState();
}

class _SituasiTerkiniState extends State<SituasiTerkini> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: WebView(
          initialUrl: 'https://covid19.kemkes.go.id/category/situasi-infeksi-emerging/info-corona-virus/#.XoBn5ogvNPY',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}