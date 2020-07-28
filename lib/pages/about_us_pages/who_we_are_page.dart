import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhoWeArePage extends StatefulWidget {
  const WhoWeArePage({Key key}) : super(key: key);

  @override
  _WhoWeArePageState createState() => _WhoWeArePageState();
}

class _WhoWeArePageState extends State<WhoWeArePage>
    with AutomaticKeepAliveClientMixin<WhoWeArePage> {
  bool _isExpanded = false;

  String desc =
      'Optiven Group is a leading brand in the African real estate sector. The Group’s main objective is to empower property investors and transform the Society. The Group has a number of flourishing Strategic Business Units (SBUs). These include Optiven Real Estate, Optiven Construction and Optiven Water.\n    Optiven Group also has a soft arm, which undertakes charity works, by the name Optiven Foundation. The Foundation has so far been involved in numerous philanthropic works in its quest to transform the social wellbeing of thousands of Kenyans.\n    Optiven Group is captained by its Founder and CEO, George Wachiuri, and is rightly living up to its mission, which is to create an environment that positively transforms its staff, customers and all its stakeholders through offering state of the art products and services.\n The Real Estate arm’s flagship product is Transformed Plots, which are particularly enhanced to suit immediate residential settlement, commercial purposes and futuristic capital gain. Optiven Real Estate is a one-stop shop offering a two-step model for home ownership solutions to its customers.\n    Optiven Group, which aims at creating over 30, 000 direct employees by the year 2030, has continued to be a differentiated and trusted name that regularly receives accolades both inside and outside Kenya.\n    The Group was recently singled out as one of the companies that will inspire Africa in 2019, by the London Stock Exchange.\n    As a market leader in the property sector, Optiven scooped the best employer in East Africa 2019 by East Africa Best Employer Brand Awards. Optiven also scooped the overall winner’s trophy in Top 100 Mid-Sized Companies Survey, 2014/2015 by KPMG and Nation Media Group. The Group also won the Best Company in Customer Orientation & Marketing in Kenya (COYA AWARDS) – 2015.';

  void _expand() {
    setState(() {
      _isExpanded ? _isExpanded = false : _isExpanded = true;
    });
  }

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
          AnimatedCrossFade(
            firstChild: Txt(desc,
                style: TxtStyle()
                  ..fontFamily('Raleway')
                  ..maxLines(6)
                  ..fontSize(20.sp)
                  ..textAlign.left()
                  ..textColor(Colors.black)
                  ..fontWeight(FontWeight.w500)),
            secondChild: Txt(desc,
                style: TxtStyle()
                  ..fontFamily('Raleway')
                  ..fontSize(20.sp)
                  ..textAlign.left()
                  ..textColor(Colors.black)
                  ..fontWeight(FontWeight.w500)),
            crossFadeState: _isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: kThemeAnimationDuration,
          ),
          GestureDetector(
            onTap: _expand,
            child: Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 20.h, right: 30.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Txt(_isExpanded ? "Less" : "Read More...",
                    style: TxtStyle()
                      ..fontFamily('Raleway')
                      ..fontSize(23.sp)
                      ..textAlign.left()
                      ..textColor(Theme.of(context).primaryColor)
                      ..fontWeight(FontWeight.w700)),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Txt(
            'VISION',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(24.sp)
              ..textAlign.left()
              ..textColor(Theme.of(context).primaryColor)
              ..fontWeight(FontWeight.w700),
          ),
          SizedBox(height: 20.h),
          Txt(
            'To be Pacesetters in Social Economic Transformation.',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..alignment.centerLeft()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          SizedBox(height: 30.h),
          Txt(
            'MISSION',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(24.sp)
              ..textAlign.left()
              ..textColor(Theme.of(context).primaryColor)
              ..fontWeight(FontWeight.w700),
          ),
          SizedBox(height: 20.h),
          Txt(
            'To create an Enviroment that Positively Transforms our Staff, Customers and other StakeHolders through offering state of the Art Products and Services.',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          SizedBox(height: 30.h),
          Txt(
            'CORE VALUES',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(24.sp)
              ..textAlign.left()
              ..textColor(Theme.of(context).primaryColor)
              ..fontWeight(FontWeight.w700),
          ),
          SizedBox(height: 20.h),
          Txt(
            'Optiven thrives on\n    1) Professionalism\n    2)Honesty\n    3) Customer Obsession\n    4) Innovation\nThese Core Values drive the company culture which supports strategy for success.',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          SizedBox(height: 30.h),
          Txt(
            'OBJECTIVES',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(24.sp)
              ..textAlign.left()
              ..textColor(Theme.of(context).primaryColor)
              ..fontWeight(FontWeight.w700),
          ),
          SizedBox(height: 20.h),
          Txt(
            '1) To provide affordable prime properties to the professionals and business people.\n2) To provide reasonably priced housing for the Eastern Africa communities.\n3) To link up home owners and developers with the market.\n4) To give back to the community through provision of affordable education and hospitality services',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          SizedBox(height: 30.h),
          Txt(
            'OUR PEOPLE',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(24.sp)
              ..textAlign.left()
              ..textColor(Theme.of(context).primaryColor)
              ..fontWeight(FontWeight.w700),
          ),
          SizedBox(height: 20.h),
          Txt(
            '    Optiven Ltd has go-getters, high level caliber staff who propel the growth of the enterprise. We are strong believers in having the best of what the market can offer. Our staff are motivated and they deliver services in a timely manner. We also believe in strong alliances and networking with other market leading professionals. We have built relationships with progressing organizations that are key stake holders to our company as we carry out our activities.',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(20.sp)
              ..textAlign.left()
              ..textColor(Colors.black)
              ..fontWeight(FontWeight.w500),
          ),
          SizedBox(height: 30.h),
          Txt(
            'WORKING METHODOLOGY',
            style: TxtStyle()
              ..fontFamily('Raleway')
              ..fontSize(24.sp)
              ..textAlign.left()
              ..textColor(Theme.of(context).primaryColor)
              ..fontWeight(FontWeight.w700),
          ),
          SizedBox(height: 20.h),
          Txt(
            '    Optiven Ltd works through stable business networks and has a very well established network with Government relevant ministries. We also work closely with major housing developers; there exists a good relationship with media on selling our services, and we have an excellent network with competitive lawyers in Kenya, Uganda and Tanzania.\n    We work with various financial providers including but not limited to Equity Bank, Commercial Bank of Africa, Consolidated Bank and Co-operative Bank of Kenya. We also have other networks with other privately owned stable financial providers in the market. We work through patronage buying and treating all our current customers well. This leads to much post purchase referrals and thus the growth of our company. We value all our customers regardless of their status.',
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
    ));
  }
}
