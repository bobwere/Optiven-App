import 'dart:async';

import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../common/constants/styles.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({@required this.userAgent});
  final String userAgent;
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
        initialUrl: 'https://partners.optiven.co.ke/create-account',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
