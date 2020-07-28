import 'dart:async';

import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_user_agent/flutter_user_agent.dart';
import 'package:get/route_manager.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../common/constants/styles.dart';
import 'webview_pages/login_page.dart';
import 'webview_pages/sign_up_page.dart';

class MyMoneyPage extends KFDrawerContent {
  MyMoneyPage({
    Key key,
  });

  @override
  _MyMoneyPageState createState() => _MyMoneyPageState();
}

class _MyMoneyPageState extends State<MyMoneyPage> {
  String _userAgent = '<unknown>';

  @override
  void initState() {
    super.initState();
    initUserAgentState();
  }

// Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initUserAgentState() async {
    String userAgent;

    try {
      userAgent = await FlutterUserAgent.getPropertyAsync('userAgent');
    } on PlatformException {
      userAgent = '<error>';
    }

    if (!mounted) return;

    setState(() {
      _userAgent = userAgent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.57,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/partners.jpg'),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.h),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Parent(
                      style: kMenuButtonStyle,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          LineAwesomeIcons.bars,
                          color: Colors.white,
                        ),
                        onPressed: widget.onMenuPressed,
                      ),
                    ),
                    SizedBox(width: 80.h),
                    Txt(
                      'My Money',
                      style: kHomeTitleStyle,
                    )
                  ],
                ),
                Spacer(),
                Txt('Partner & Earn', style: kHomePageTextStyle),
                Txt('Ksh 20000-50000', style: kHomePageTextStyle),
                Txt('for every successful', style: kHomePageTextStyle),
                Txt('referral', style: kHomePageTextStyle),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.46,
            child: Column(
              children: <Widget>[
                //Row Name and See All Text
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Txt('How Does It Work',
                          style: kFeaturedTextStyle.clone()
                            ..fontSize(25.sp)
                            ..padding(vertical: 10.h)),
                    ],
                  ),
                ),

                //Horizontal ListView
                Expanded(
                  child: Container(
                    child: ListView(
                      padding: EdgeInsets.only(right: 10.h, left: 10.h),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        HowToCard(
                          title: 'Join',
                          message:
                              'It\'s free and easy to join. Get up and running today.',
                        ),
                        HowToCard(
                          title: 'Share',
                          message:
                              'Choose from our properties and generate a special referral link and discount coupon to share with your friends Your friends would love to receive a discount coupon for use when buying a property. Recruit your friends to the My Money program by sharing your network link too.',
                        ),
                        HowToCard(
                          title: 'Earn',
                          message:
                              'When people buy a property using your link, you get an INCOME and they get a discount using your coupon code. Earn upto Ksh 50,000 for every successful referral. Earn a percentage of the commission made by those you helped join the program.',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Parent(
            gesture: Gestures()
              ..onTap(() {
                Get.to(SignUpPage(
                  userAgent: _userAgent,
                ));
              }),
            style: ParentStyle()
              ..margin(horizontal: 20.h)
              ..height(70.h)
              ..ripple(true)
              ..width(double.infinity)
              ..border(
                  all: 2.0, color: Color(0xFF00D561), style: BorderStyle.solid)
              ..borderRadius(all: 15.h),
            child: Txt(
              'SIGN UP',
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..fontSize(27.sp)
                ..textColor(Color(0xFF00D561))
                ..fontWeight(FontWeight.w800)
                ..alignment.center(),
            ),
          ),
          SizedBox(height: 20.h),
          Txt(
            '-Or-',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.center()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          Txt(
            'Already have an Account',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.center()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          SizedBox(height: 20.h),
          Parent(
            gesture: Gestures()
              ..onTap(() {
                Get.to(LoginPage(
                  userAgent: _userAgent,
                ));
              }),
            style: ParentStyle()
              ..margin(horizontal: 20.h)
              ..height(70.h)
              ..ripple(true)
              ..width(double.infinity)
              ..borderRadius(all: 15.h)
              ..boxShadow(
                color: Colors.grey.shade200,
                offset: Offset(0.h, 3.5.h),
                blur: 3.5.h,
              )
              ..background.color(Color(0xFF00D561)),
            child: Txt(
              'LOGIN',
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..fontSize(27.sp)
                ..textColor(Colors.white)
                ..fontWeight(FontWeight.w800)
                ..alignment.center(),
            ),
          ),
          SizedBox(height: 30.h)
        ],
      ),
    ));
  }
}

class HowToCard extends StatefulWidget {
  const HowToCard({Key key, @required this.title, @required this.message})
      : super(key: key);

  final String title;
  final String message;

  @override
  _HowToCardState createState() => _HowToCardState();
}

class _HowToCardState extends State<HowToCard> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..width(350.h)
        ..border(all: 1.0, color: Color(0xFFDADCE0), style: BorderStyle.solid)
        ..borderRadius(all: 15.h)
        ..margin(left: 10.h, right: 10.h, bottom: 20.h),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),
            Txt(widget.title,
                style: TxtStyle()
                  ..fontFamily('Raleway')
                  ..fontSize(24.sp)
                  ..textColor(Theme.of(context).primaryColor)
                  ..fontWeight(FontWeight.w700)),
            SizedBox(height: 10.h),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
                child: Txt(
                  widget.message,
                  style: TxtStyle()
                    ..fontFamily('Raleway')
                    ..fontSize(20.sp)
                    ..textAlign.center()
                    ..textColor(Colors.black)
                    ..fontWeight(FontWeight.w500),
                ),
              ),
            ),
          ]),
    );
  }
}
