import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewEx extends StatefulWidget {
  const WebViewEx({super.key});

  @override
  State<WebViewEx> createState() => _WebViewExState();
}

class _WebViewExState extends State<WebViewEx> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://pub.dev/packages/webview_flutter"));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("webview"),
        backgroundColor: Colors.red,
      ),
      body: WebViewWidget(controller: controller
      ),
    );
  }
}
