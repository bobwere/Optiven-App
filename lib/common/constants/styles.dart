import 'package:division/division.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:optiven/common/constants/theme.dart';

final kAppbarTitleStyle = TxtStyle()
  ..fontFamily('Raleway')
  ..fontSize(32.sp)
  ..textColor(Colors.black)
  ..fontWeight(FontWeight.w800);

final kHomeTitleStyle = TxtStyle()
  ..fontFamily('Montserrat')
  ..fontSize(40.sp)
  ..textColor(Colors.black)
  ..fontWeight(FontWeight.w800);

final kSeeMoreTextStyle = TxtStyle()
  ..fontFamily('Raleway')
  ..fontSize(18.sp)
  ..textColor(fyndaaTheme.primaryColor)
  ..fontWeight(FontWeight.w700)
  ..alignment.centerRight()
  ..ripple(true)
  ..padding(left: 30.h, right: 20.h, top: 20.h, bottom: 20.h);

final kFeaturedTextStyle = TxtStyle()
  ..fontFamily('Raleway')
  ..fontSize(20.sp)
  ..textColor(Colors.black87)
  ..fontWeight(FontWeight.w800)
  ..alignment.centerLeft();

final kHomePageTextStyle = TxtStyle()
  ..fontFamily('Montserrat')
  ..fontSize(30.sp)
  ..textColor(Colors.white)
  ..fontWeight(FontWeight.w700)
  ..padding(left: 20.h)
  ..alignment.centerLeft();

final kProjectName = TxtStyle()
  ..fontFamily('Montserrat')
  ..fontSize(20.sp)
  ..fontWeight(FontWeight.w500)
  ..alignment.centerLeft()
  ..textOverflow(TextOverflow.ellipsis)
  ..textColor(Colors.black87);

final kProjectPrice = TxtStyle()
  ..fontFamily('Montserrat')
  ..fontSize(20.sp)
  ..fontWeight(FontWeight.w700)
  ..alignment.centerLeft()
  ..textColor(Colors.black87);

final kDrawerMenuNameStyle = TxtStyle()
  ..fontFamily('Montserrat')
  ..fontSize(20.sp)
  ..fontWeight(FontWeight.w700)
  ..textColor(Colors.white);

final kMenuButtonStyle = ParentStyle()
  ..height(50.h)
  ..width(50.h)
  ..borderRadius(all: 18.h)
  ..background.color(Colors.black)
  ..margin(left: 20.h)
  ..alignmentContent.center()
  ..opacity(0.45);

final kProjectDetailCallButtonStyle = ParentStyle()
  ..height(70.h)
  ..ripple(true)
  ..width(210.h)
  ..borderRadius(all: 15.h)
  ..boxShadow(
    color: Colors.grey.shade200,
    offset: Offset(0.h, 3.5.h),
    blur: 3.5.h,
  )
  ..background.color(Color(0xFF00D561));

final kProjectDetailCallTextStyle = TxtStyle()
  ..fontFamily('Raleway')
  ..fontSize(23.sp)
  ..textColor(Colors.white)
  ..fontWeight(FontWeight.w800)
  ..alignment.center();

final kMainPageCardStyle = ParentStyle()
  ..ripple(true, splashColor: Color(0xFF55D58F))
  ..width(350.h)
  ..padding(left: 10.h, right: 10.h);

final kMainPageGreenNextButtonStyle = ParentStyle()
  ..height(40.h)
  ..width(40.h)
  ..circle(true)
  ..background.color(Color(0xFF00D561));

final kLoadedFailureButtonStyle = ParentStyle()
  ..height(70.h)
  ..width(70.h)
  ..background.color(Color(0xFF00D561))
  ..elevation(5.0, color: Colors.grey, angle: 0.0)
  ..circle()
  ..alignmentContent.center();
