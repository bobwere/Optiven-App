import 'package:division/division.dart';
import 'package:email_launcher/email_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/styles.dart';

class OurPartnersPage extends StatefulWidget {
  const OurPartnersPage({Key key}) : super(key: key);

  @override
  _OurPartnersPageState createState() => _OurPartnersPageState();
}

class _OurPartnersPageState extends State<OurPartnersPage>
    with AutomaticKeepAliveClientMixin<OurPartnersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          children: <Widget>[
            Parent(
              style: ParentStyle()
                ..width(MediaQuery.of(context).size.width)
                ..border(
                    all: 1.0,
                    color: Color(0xFFDADCE0),
                    style: BorderStyle.solid)
                ..margin(all: 20.h, top: 10.h, bottom: 10.h)
                ..padding(all: 20.h)
                ..borderRadius(all: 15.h),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Txt(
                      'LAWYERS',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(24.sp)
                        ..textAlign.left()
                        ..textColor(Theme.of(context).primaryColor)
                        ..fontWeight(FontWeight.w700),
                    ),
                    SizedBox(height: 20.h),
                    Txt(
                      'Wakini Kiarie & Co Advocates',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'Kantaria Building- 2nd Floor',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'P.O Box 73739 -00200, Nairobi',
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
                              to: ["dwakiini@yahoo.com"],
                              subject: "Enquiry",
                            );
                            EmailLauncher.launch(email);
                          }),
                        style: kProjectDetailCallButtonStyle,
                        child: Container(
                          child: Txt('Email Us',
                              style: kProjectDetailCallTextStyle),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.h, 20.h, 0.h, 0.h),
                      child: Parent(
                        gesture: Gestures()
                          ..onTap(() {
                            FlutterPhoneState.startPhoneCall(
                                "+254 020-2128579");
                          }),
                        style: kProjectDetailCallButtonStyle,
                        child: Container(
                          child: Txt('Call Us',
                              style: kProjectDetailCallTextStyle),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Parent(
              style: ParentStyle()
                ..width(MediaQuery.of(context).size.width)
                ..border(
                    all: 1.0,
                    color: Color(0xFFDADCE0),
                    style: BorderStyle.solid)
                ..margin(all: 20.h, top: 10.h, bottom: 10.h)
                ..borderRadius(all: 15.h)
                ..padding(all: 20.h),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Txt(
                      'ICT',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(24.sp)
                        ..textAlign.left()
                        ..textColor(Theme.of(context).primaryColor)
                        ..fontWeight(FontWeight.w700),
                    ),
                    SizedBox(height: 20.h),
                    Txt(
                      'Pithon K. Kamau',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'Heartbit Computer Solutions Limited',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'P.O Box 73739 -00200, Nairobi',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'Westlands Commercial Center, Block B4, Suite 3',
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
                            FlutterPhoneState.startPhoneCall("0723 588705");
                          }),
                        style: kProjectDetailCallButtonStyle,
                        child: Container(
                          child: Txt('Call Us',
                              style: kProjectDetailCallTextStyle),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.h, 20.h, 0.h, 0.h),
                      child: Parent(
                        gesture: Gestures()
                          ..onTap(() {
                            FlutterPhoneState.startPhoneCall("0764 588705");
                          }),
                        style: kProjectDetailCallButtonStyle,
                        child: Container(
                          child: Txt('Call Us',
                              style: kProjectDetailCallTextStyle),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.h, 20.h, 0.h, 0.h),
                      child: Parent(
                        gesture: Gestures()
                          ..onTap(() {
                            final email = Email(
                              to: ["pkamau@heartbitsolutions.com"],
                              subject: "Enquiry",
                            );
                            EmailLauncher.launch(email);
                          }),
                        style: kProjectDetailCallButtonStyle,
                        child: Container(
                          child: Txt('Email Us',
                              style: kProjectDetailCallTextStyle),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Parent(
              style: ParentStyle()
                ..width(MediaQuery.of(context).size.width)
                ..border(
                    all: 1.0,
                    color: Color(0xFFDADCE0),
                    style: BorderStyle.solid)
                ..margin(all: 20.h, top: 10.h, bottom: 10.h)
                ..borderRadius(all: 15.h)
                ..padding(all: 20.h),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20.h),
                    Txt(
                      'BANKS',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(24.sp)
                        ..textAlign.left()
                        ..textColor(Theme.of(context).primaryColor)
                        ..fontWeight(FontWeight.w700),
                    ),
                    SizedBox(height: 20.h),
                    Txt(
                      'Equity Bank',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'Cooperative Bank of Kenya',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'Kenya Commercial Bank',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'African Banking Corporation (ABC)',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'Commercial Bank of Africa (CBA)',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
            Parent(
              style: ParentStyle()
                ..width(MediaQuery.of(context).size.width)
                ..border(
                    all: 1.0,
                    color: Color(0xFFDADCE0),
                    style: BorderStyle.solid)
                ..margin(all: 20.h, top: 10.h, bottom: 10.h)
                ..borderRadius(all: 15.h)
                ..padding(all: 20.h),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20.h),
                    Txt(
                      'OFFICIAL FINANCIAL CONSULTANTS',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(24.sp)
                        ..textAlign.left()
                        ..textColor(Theme.of(context).primaryColor)
                        ..fontWeight(FontWeight.w700),
                    ),
                    SizedBox(height: 20.h),
                    Txt(
                      'Valuemax Consulting Ltd',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'Nairobi Office:6th Floor, Kitamu Hse,',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'Next to Revlon Plaza.',
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500),
                    ),
                    Txt(
                      'P.O. Box 16528-00100, Nairobi GPO.',
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
                            FlutterPhoneState.startPhoneCall("020-214 6425");
                          }),
                        style: kProjectDetailCallButtonStyle,
                        child: Container(
                          child: Txt('Call Us',
                              style: kProjectDetailCallTextStyle),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.h, 20.h, 0.h, 0.h),
                      child: Parent(
                        gesture: Gestures()
                          ..onTap(() {
                            FlutterPhoneState.startPhoneCall("020-2246764");
                          }),
                        style: kProjectDetailCallButtonStyle,
                        child: Container(
                          child: Txt('Call Us',
                              style: kProjectDetailCallTextStyle),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.h, 20.h, 0.h, 0.h),
                      child: Parent(
                        gesture: Gestures()
                          ..onTap(() {
                            final email = Email(
                              to: ["info@valuemax.co.ke"],
                              subject: "Enquiry",
                            );
                            EmailLauncher.launch(email);
                          }),
                        style: kProjectDetailCallButtonStyle,
                        child: Container(
                          child: Txt('Email Us',
                              style: kProjectDetailCallTextStyle),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
