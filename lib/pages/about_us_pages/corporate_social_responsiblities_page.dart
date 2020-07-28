import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CorporateSocialResponibilityPage extends StatefulWidget {
  const CorporateSocialResponibilityPage({Key key}) : super(key: key);

  @override
  _CorporateSocialResponibilityPageState createState() =>
      _CorporateSocialResponibilityPageState();
}

class _CorporateSocialResponibilityPageState
    extends State<CorporateSocialResponibilityPage>
    with AutomaticKeepAliveClientMixin<CorporateSocialResponibilityPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Image.asset (
             'assets/images/foundation.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width),
        ),
        SizedBox(height: 30.h),
        Txt(
          'Working Methodology',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(24.sp)
            ..padding(left: 20.h)
            ..textAlign.left()
            ..textColor(Theme.of(context).primaryColor)
            ..fontWeight(FontWeight.w700),
        ),
        SizedBox(height: 20.h),
        Txt(
          'Optiven Foundation work through donations and volunteer work. The founders have also authored books that all the proceeds from the sales goes directly to the foundation. The founders also give service to the community; this includes youth Motivation, business talks, advisory to investment groups for volunteer tokens. All these tokens are credited to the foundation in order to further the foundation goals and aspirations',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..textAlign.left()
            ..padding(left: 20.h, right: 20.h)
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        SizedBox(height: 30.h),
        Txt(
          'The Focus/Objectives',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(24.sp)
            ..textAlign.left()
            ..padding(left: 20.h)
            ..textColor(Theme.of(context).primaryColor)
            ..fontWeight(FontWeight.w700),
        ),
        SizedBox(height: 20.h),
        Txt(
          '1) Provision of education opportunities to millions of needy children in Africa.',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..textAlign.left()
            ..padding(left: 20.h, right: 20.h)
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        Txt(
          '2) Poverty Alleviation',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..textAlign.left()
            ..padding(left: 20.h, right: 20.h)
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        Txt(
          '3) Promotion of Health and.',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..padding(left: 20.h, right: 20.h)
            ..textAlign.left()
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        Txt(
          '4) Environmental Protection.',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..textAlign.left()
            ..padding(left: 20.h, right: 20.h)
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        SizedBox(height: 30.h),
        Txt(
          'Programs undertaken by Optiven Foundation',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(24.sp)
            ..textAlign.left()
            ..padding(left: 20.h, right: 20.h)
            ..textColor(Theme.of(context).primaryColor)
            ..fontWeight(FontWeight.w700),
        ),
        SizedBox(height: 30.h),
        Txt(
          '1) The Soaring Eagles Scholarship Programme',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..textAlign.left()
            ..padding(left: 20.h, right: 20.h)
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        Txt(
          '2) The Forgotten Senior Citizens of Africa – Aging with Dignity',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..padding(left: 20.h, right: 20.h)
            ..textAlign.left()
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        Txt(
          '3) Mwingi Medical Camp',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..textAlign.left()
            ..padding(left: 20.h, right: 20.h)
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        Txt(
          '4) Optiven Foundation Visits Soweto Children’s home in Kayole.',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..textAlign.left()
            ..padding(left: 20.h, right: 20.h)
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        Txt(
          '5) Optiven Foundation at Laburra Mixed Secondary School',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..textAlign.left()
            ..padding(left: 20.h, right: 20.h)
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        Txt(
          '6) Optiven visits Orphans at Agape Home – Kawangware',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..padding(left: 20.h, right: 20.h)
            ..textAlign.left()
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        Txt(
          '7) Love in Action – Optiven with street families at the Deliverance Church, Eastleigh',
          style: TxtStyle()
            ..fontFamily('Raleway')
            ..fontSize(20.sp)
            ..textAlign.left()
            ..padding(left: 20.h, right: 20.h)
            ..textColor(Colors.black)
            ..fontWeight(FontWeight.w500),
        ),
        SizedBox(height: 20.h)
      ],
    ));
  }
}
