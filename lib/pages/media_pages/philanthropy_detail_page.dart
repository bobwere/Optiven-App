import 'package:cached_network_image/cached_network_image.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/styles.dart';
import '../../projects/domain/entities/news_and_blogs_entity.dart';

class PhilanthropyDetailPage extends StatelessWidget {
  const PhilanthropyDetailPage({Key key, @required this.news})
      : super(key: key);
  final NewsAndBlogs news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 2,
        title: Txt('Details Page',
            style: kAppbarTitleStyle.clone()..textColor(Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              width: double.infinity,
              height: 250.h,
              imageUrl: news.imageUrl,
              fadeOutDuration: const Duration(milliseconds: 700),
              fadeInDuration: const Duration(milliseconds: 700),
              errorWidget: (context, url, error) => Icon(Icons.error),
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 20.h, right: 20.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width),
                  child: Txt(news.title,
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(24.sp)
                        ..textColor(Colors.black87)
                        ..fontWeight(FontWeight.w700)),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width),
                  child: Txt(news.title,
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..fontSize(20.sp)
                        ..textColor(Colors.grey)
                        ..fontWeight(FontWeight.w600)),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 20.h, right: 20.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Txt(news.description,
                    style: TxtStyle()
                      ..fontFamily('Raleway')
                      ..fontSize(20.sp)
                      ..textAlign.left()
                      ..textColor(Colors.black)
                      ..fontWeight(FontWeight.w500)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
