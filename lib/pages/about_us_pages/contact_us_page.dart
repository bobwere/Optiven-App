import 'package:division/division.dart';
import 'package:email_launcher/email_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/styles.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key key}) : super(key: key);

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage>
    with AutomaticKeepAliveClientMixin<ContactUsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Txt(
            'Optiven Limited Head Office',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(24.sp)
              ..textAlign.left()
              ..textColor(Theme.of(context).primaryColor)
              ..fontWeight(FontWeight.w700),
          ),
          SizedBox(height: 10.h),
          Txt(
            'Barclays plaza Loita street 14th floor Wing A',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          SizedBox(height: 30.h),
          Txt(
            'Branches',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(24.sp)
              ..textAlign.left()
              ..textColor(Theme.of(context).primaryColor)
              ..fontWeight(FontWeight.w700),
          ),
          SizedBox(height: 10.h),
          Txt(
            'Kitengela: Acacia Junction (Right on Tarmac)',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          Txt(
            'P. O Box 623-00600 Nairobi, Kenya',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.h, 20.h, 0.h, 0.h),
            child: Parent(
              gesture: Gestures()
                ..onTap(() {
                  final email = Email(
                    to: ["info@optiven.co.ke"],
                    subject: "Enquiry",
                  );
                  EmailLauncher.launch(email);
                }),
              style: kProjectDetailCallButtonStyle,
              child: Container(
                child: Txt('Email Us', style: kProjectDetailCallTextStyle),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.h, 20.h, 0.h, 0.h),
            child: Parent(
              gesture: Gestures()
                ..onTap(() {
                  FlutterPhoneState.startPhoneCall("0790 300300");
                }),
              style: kProjectDetailCallButtonStyle,
              child: Container(
                child: Txt('Call Us', style: kProjectDetailCallTextStyle),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0.h, 20.h, 0.h, 0.h),
              child: Parent(
                gesture: Gestures()
                  ..onTap(() {
                    FlutterPhoneState.startPhoneCall("0723 400500");
                  }),
                style: kProjectDetailCallButtonStyle,
                child: Container(
                  child: Txt('Call Us', style: kProjectDetailCallTextStyle),
                ),
              )),
          SizedBox(height: 20.h),
          Txt(
            'USA Office (North America – Midwest)',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          Txt(
            '9308 W 87th ter, Overland Park, KS 66212',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          Txt(
            'Regional Representative: Mr Stanley',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.h, 20.h, 0.h, 0.h),
            child: Parent(
              gesture: Gestures()
                ..onTap(() {
                  final email = Email(
                    to: ["usa@optiven.co.ke"],
                    subject: "Enquiry",
                  );
                  EmailLauncher.launch(email);
                }),
              style: kProjectDetailCallButtonStyle,
              child: Container(
                child: Txt('Email Us', style: kProjectDetailCallTextStyle),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.h, 20.h, 0.h, 0.h),
            child: Parent(
              gesture: Gestures()
                ..onTap(() {
                  FlutterPhoneState.startPhoneCall("913-221-5046");
                }),
              style: kProjectDetailCallButtonStyle,
              child: Container(
                child: Txt('Call Us', style: kProjectDetailCallTextStyle),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
