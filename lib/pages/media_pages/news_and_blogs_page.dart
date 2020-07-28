import 'package:cached_network_image/cached_network_image.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:optiven/common/constants/strings.dart';
import 'package:kt_dart/collection.dart';
import 'package:optiven/pages/widgets/creation_Aware_List_Item.dart';
import 'package:shimmer/shimmer.dart';

import '../../projects/application/news_and_blogs_bloc/news_and_blogs_bloc.dart';
import '../../projects/domain/entities/news_and_blogs_entity.dart';
import 'news_and_blogs_detail_page.dart';

class NewsAndBlogsPage extends StatefulWidget {
  const NewsAndBlogsPage({Key key}) : super(key: key);

  @override
  _NewsAndBlogsPageState createState() => _NewsAndBlogsPageState();
}

class _NewsAndBlogsPageState extends State<NewsAndBlogsPage>
    with AutomaticKeepAliveClientMixin<NewsAndBlogsPage> {
  bool isLoading = false;
  ScrollController controller = ScrollController();
  var news = List();
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();

    controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsAndBlogsBloc, NewsAndBlogsState>(
        builder: (context, state) {
      return state.map(
        initial: (_) {
          return Text('');
        },
        loadingData: (_) {
          return ListView(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            children: <Widget>[
              NewsAndBlogsShimmerCard(),
              NewsAndBlogsShimmerCard(),
              NewsAndBlogsShimmerCard(),
              NewsAndBlogsShimmerCard(),
            ],
          );
        },
        loadSuccess: (state) {
          var newsFromBloc = state.newsAndBlogs.asList();
          print('size of incoming data ' + newsFromBloc.length.toString());
          news.addAll(newsFromBloc);
          print('size of existing data ' + news.length.toString());
          return ListView.builder(
              // controller: controller,
              padding: EdgeInsets.symmetric(vertical: 10.h),
              itemCount: news.length,
              itemBuilder: (context, index) {
                final newsItem = news[index];
                return CreationAwareListItem(
                    itemCreated: () {
                      if (index % 7 == 0) {
                        BlocProvider.of<NewsAndBlogsBloc>(context)
                            .add(NewsAndBlogsEvent.getMoreNewsAndBlogs());
                      }
                    },
                    child: NewsAndBlogsCard(news: newsItem));
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
                            BlocProvider.of<NewsAndBlogsBloc>(context)
                                .add(NewsAndBlogsEvent.getAllNewsAndBlogs());
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
                            BlocProvider.of<NewsAndBlogsBloc>(context)
                                .add(NewsAndBlogsEvent.getAllNewsAndBlogs());
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
    });
  }

  void _scrollListener() {
    if (controller.position.maxScrollExtent == controller.offset) {
      context
          .bloc<NewsAndBlogsBloc>()
          .add(NewsAndBlogsEvent.getMoreNewsAndBlogs());
    }
  }
}

class NewsAndBlogsCard extends StatefulWidget {
  const NewsAndBlogsCard({Key key, @required this.news}) : super(key: key);

  final NewsAndBlogs news;

  @override
  _NewsAndBlogsCardState createState() => _NewsAndBlogsCardState();
}

class _NewsAndBlogsCardState extends State<NewsAndBlogsCard> {
  String hash;
  @override
  void initState() {
    hash = randomChoice<String>(hashOptions);
    super.initState();
  }

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
          Get.to(NewsAndBlogDetailPage(news: this.widget.news));
        }),
      child: Column(
        children: <Widget>[
          //Image from database
          Container(
            height: 250.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.h),
                  topLeft: Radius.circular(15.h)),
              child: CachedNetworkImage(
                width: double.infinity,
                height: 250.h,
                imageUrl: widget.news.imageUrl,
                fadeOutDuration: const Duration(milliseconds: 250),
                fadeInDuration: const Duration(milliseconds: 250),
                placeholderFadeInDuration: const Duration(milliseconds: 50),
                placeholder: (context, url) => BlurHash(
                  hash: hash,
                  imageFit: BoxFit.cover,
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 20.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
                child: Txt(widget.news.title,
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
            padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 20.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
                child: Txt(widget.news.date,
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
            padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 20.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Txt(widget.news.description,
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
            padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 20.h),
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
          SizedBox(height: 20.h)
        ],
      ),
    );
  }
}

class NewsAndBlogsShimmerCard extends StatelessWidget {
  const NewsAndBlogsShimmerCard({Key key}) : super(key: key);

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
