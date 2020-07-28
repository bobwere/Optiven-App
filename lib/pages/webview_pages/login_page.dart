import 'dart:async';

import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../common/constants/styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({@required this.userAgent});
  final String userAgent;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 2,
        title: Txt('My Money',
            style: kAppbarTitleStyle.clone()..textColor(Colors.white)),
        centerTitle: true,
      ),
      body: WebView(
        userAgent: widget.userAgent,
        initialUrl: 'https://partners.optiven.co.ke/login',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
