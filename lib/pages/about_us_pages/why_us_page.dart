import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhyUsPage extends StatefulWidget {
  const WhyUsPage({Key key}) : super(key: key);

  @override
  _WhyUsPageState createState() => _WhyUsPageState();
}

class _WhyUsPageState extends State<WhyUsPage>
    with AutomaticKeepAliveClientMixin<WhyUsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Txt(
              'Optiven Limited delivers real estate solutions at a personalized level and is a market leader in providing lands and plots for sale that has value additions.',
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..maxLines(2)
                ..fontSize(20.sp)
                ..textAlign.left()
                ..textColor(Colors.black)
                ..fontWeight(FontWeight.w500),
            ),
            SizedBox(height: 20.h),
            Txt(
              '1) We add Value on our properties',
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..maxLines(2)
                ..fontSize(20.sp)
                ..textAlign.left()
                ..padding(left: 20.h)
                ..textColor(Colors.black)
                ..fontWeight(FontWeight.w500),
            ),
            Txt(
              '2) We ensure promptness in Title deed production',
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..maxLines(2)
                ..fontSize(20.sp)
                ..textAlign.left()
                ..padding(left: 20.h)
                ..textColor(Colors.black)
                ..fontWeight(FontWeight.w500),
            ),
            Txt(
              '3) We offer excellent customer service',
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..maxLines(2)
                ..fontSize(20.sp)
                ..textAlign.left()
                ..padding(left: 20.h)
                ..textColor(Colors.black)
                ..fontWeight(FontWeight.w500),
            ),
            Txt(
              '4) We pay our taxes',
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..maxLines(2)
                ..fontSize(20.sp)
                ..textAlign.left()
                ..padding(left: 20.h)
                ..textColor(Colors.black)
                ..fontWeight(FontWeight.w500),
            ),
            Txt(
              '5) We create job opportunities',
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..maxLines(2)
                ..fontSize(20.sp)
                ..textAlign.left()
                ..padding(left: 20.h)
                ..textColor(Colors.black)
                ..fontWeight(FontWeight.w500),
            ),
            Txt(
              '6) We have a Greening policy on our properties',
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..maxLines(2)
                ..fontSize(20.sp)
                ..padding(left: 20.h)
                ..textAlign.left()
                ..textColor(Colors.black)
                ..fontWeight(FontWeight.w500),
            ),
            Txt(
              '7) We conduct corporate social responsibility within the society',
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..maxLines(2)
                ..fontSize(20.sp)
                ..textAlign.left()
                ..padding(left: 20.h)
                ..textColor(Colors.black)
                ..fontWeight(FontWeight.w500),
            ),
          ],
        ));
  }
}
