import 'package:cached_network_image/cached_network_image.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:optiven/injection_container.dart';
import 'package:shimmer/shimmer.dart';

import '../../projects/application/philanthropy_news_bloc/philanthropy_news_bloc.dart';
import '../../projects/domain/entities/news_and_blogs_entity.dart';
import 'philanthropy_detail_page.dart';

class PhilanthropyPage extends StatefulWidget {
  const PhilanthropyPage({Key key}) : super(key: key);

  @override
  _PhilanthropyPageState createState() => _PhilanthropyPageState();
}

class _PhilanthropyPageState extends State<PhilanthropyPage>
    with AutomaticKeepAliveClientMixin<PhilanthropyPage> {
  bool isLoading = false;
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhilanthropyNewsBloc>(
      create: (_) => sl<PhilanthropyNewsBloc>()
        ..add(PhilanthropyNewsEvent.getAllPhilanthropyNews()),
      child: BlocBuilder<PhilanthropyNewsBloc, PhilanthropyNewsState>(
          builder: (context, state) {
        return state.map(
          initial: (_) {
            return Text('');
          },
          loadingData: (_) {
            return ListView(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              children: <Widget>[
                PhilanthropyShimmerCard(),
                PhilanthropyShimmerCard(),
                PhilanthropyShimmerCard(),
                PhilanthropyShimmerCard(),
              ],
            );
          },
          loadSuccess: (state) {
            final news = state.newsAndBlogs;
            return ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                itemCount: news.size,
                itemBuilder: (context, index) {
                  final newsItem = news[index];
                  return PhilanthropyCard(news: newsItem);
                });
          },
          loadFailure: (state) {
            return state.newsAndBlogsFailure.map(unexpected: (_) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Severe Server Failure'),
                    SizedBox(height: 20.h),
                    Parent(
                        gesture: Gestures()
                          ..onTap(() async {
                            if (!isLoading) {
                              isLoading = !isLoading;
                              BlocProvider.of<PhilanthropyNewsBloc>(context)
                                  .add(PhilanthropyNewsEvent
                                      .getAllPhilanthropyNews());
                              await Future.delayed(Duration(seconds: 3));
                              setState(() {
                                isLoading = !isLoading;
                              });
                            }
                          }),
                        style: ParentStyle()
                          ..height(70.h)
                          ..width(70.h)
                          ..background.color(Theme.of(context).primaryColor)
                          ..elevation(5.0, color: Colors.grey, angle: 0.0)
                          ..circle()
                          ..alignmentContent.center(),
                        child: isLoading
                            ? CircularProgressIndicator(
                                backgroundColor: Colors.white,
                              )
                            : Icon(Icons.replay, color: Colors.white))
                  ],
                ),
              );
            }, noInternet: (_) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('No Internet, Please Try Again'),
                    SizedBox(height: 20.h),
                    Parent(
                        gesture: Gestures()
                          ..onTap(() async {
                            if (!isLoading) {
                              isLoading = !isLoading;
                              BlocProvider.of<PhilanthropyNewsBloc>(context)
                                  .add(PhilanthropyNewsEvent
                                      .getAllPhilanthropyNews());
                              await Future.delayed(Duration(seconds: 3));
                              setState(() {
                                isLoading = !isLoading;
                              });
                            }
                          }),
                        style: ParentStyle()
                          ..height(70.h)
                          ..width(70.h)
                          ..background.color(Theme.of(context).primaryColor)
                          ..elevation(5.0, color: Colors.grey, angle: 0.0)
                          ..circle()
                          ..alignmentContent.center(),
                        child: isLoading
                            ? CircularProgressIndicator(
                                backgroundColor: Colors.white,
                              )
                            : Icon(Icons.replay, color: Colors.white))
                  ],
                ),
              );
            });
          },
        );
      }),
    );
  }
}

class PhilanthropyCard extends StatelessWidget {
  const PhilanthropyCard({Key key, @required this.news}) : super(key: key);
  final NewsAndBlogs news;

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..width(MediaQuery.of(context).size.width)
        ..border(all: 1.0, color: Color(0xFFDADCE0), style: BorderStyle.solid)
        ..margin(all: 20.h, top: 10.h, bottom: 10.h)
        ..borderRadius(all: 15.h)
        ..ripple(true, splashColor: Theme.of(context).accentColor),
      gesture: Gestures()
        ..onTap(() {
          Get.to(PhilanthropyDetailPage(news: this.news));
        }),
      child: Container(
        child: Column(
          children: <Widget>[
            //Image from database
            Container(
              height:250.h,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.h),
                    topLeft: Radius.circular(15.h)),
                child: CachedNetworkImage(
                  width: double.infinity,
                  height: 250.h,
                  imageUrl: news.imageUrl,
                  fadeOutDuration: const Duration(milliseconds: 250),
                  fadeInDuration: const Duration(milliseconds: 250),
                  placeholderFadeInDuration: const Duration(milliseconds: 50),
                  placeholder: (context, url) => BlurHash(
                    hash: news.hash,
                    imageFit: BoxFit.cover,
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
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
              padding: EdgeInsets.only(left: 20.h, right: 20.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width),
                  child: Txt(news.date,
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
                      ..maxLines(4)
                      ..fontSize(20.sp)
                      ..textAlign.left()
                      ..textColor(Colors.black)
                      ..fontWeight(FontWeight.w500)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 20.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Txt("Read More...",
                    style: TxtStyle()
                      ..fontFamily('Raleway')
                      ..fontSize(23.sp)
                      ..textAlign.left()
                      ..textColor(Theme.of(context).primaryColor)
                      ..fontWeight(FontWeight.w700)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PhilanthropyShimmerCard extends StatelessWidget {
  const PhilanthropyShimmerCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..width(MediaQuery.of(context).size.width)
        ..border(all: 1.0, color: Color(0xFFDADCE0), style: BorderStyle.solid)
        ..margin(all: 20.h, top: 10.h, bottom: 10.h)
        ..borderRadius(all: 15.h),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[400],
        highlightColor: Colors.grey[100],
        child: Container(
          child: Column(
            children: <Widget>[
              //Image from database
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.h),
                    topLeft: Radius.circular(15.h)),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 250.h,
                ),
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.h, horizontal: 20.h),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width / 2,
                    height: 20.h,
                  ),
                ),
              ),

              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.h, horizontal: 20.h),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width / 4,
                    height: 20.h,
                  ),
                ),
              ),
              SizedBox(height: 20.h),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.h),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 20.h,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.h),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 20.h,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.h),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 20.h,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.h),
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 20.h,
                  ),
                ),
              ),
              SizedBox(height: 15.h)
            ],
          ),
        ),
      ),
    );
  }
}
