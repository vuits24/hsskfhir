import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

void main() {
  runApp(WebViewPlusExample());
}

class WebViewPlusExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebViewPlusExampleMainPage(),
    );
  }
}

class WebViewPlusExampleMainPage extends StatefulWidget {
  @override
  _WebViewPlusExampleMainPageState createState() =>
      _WebViewPlusExampleMainPageState();
}

class _WebViewPlusExampleMainPageState
    extends State<WebViewPlusExampleMainPage> {
  WebViewPlusController _controller;
  double _height = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(        
        child: WebViewPlus(
              initialUrl: 'http://appbn.medicloud.vn:8821/appbn/',
              onWebViewCreated: (controller) {
                this._controller = controller;
              },

              onPageFinished: (url) {  
              },              
              javascriptMode: JavascriptMode.unrestricted,
            )
            ),
    );
  }
}