import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_phone_state/flutter_phone_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:optiven/projects/infrastructure/models/favourite_model.dart';
import 'package:share/share.dart';

import '../common/constants/styles.dart';
import '../common/helpers/sqflite_database_helper.dart';
import '../projects/domain/entities/project_entity.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({Key key, @required this.project}) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 480, height: 854, allowFontScaling: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 2,
        title: Txt('Project Details',
            style: kAppbarTitleStyle.clone()..textColor(Colors.white)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              LineAwesomeIcons.share_alt,
            ),
            onPressed: () {
              Share.share('Amazing properties available on the Optiven App');
            },
          )
        ],
      ),
      body: ProjectDetailScreen(project: project),
    );
  }
}

class ProjectDetailScreen extends StatefulWidget {
  const ProjectDetailScreen({Key key, @required this.project})
      : super(key: key);
  final Project project;
  @override
  _ProjectDetailScreenState createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen> {
  int _current = 0;
  bool _isExpanded = false;

  void _expand() {
    setState(() {
      _isExpanded ? _isExpanded = false : _isExpanded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imagesList = widget.project.picture;
    final List<String> hashList = widget.project.hash;

    final List<Widget> imageSliders = imagesList
        .map((item) => Container(
              child: CachedNetworkImage(
                width: double.infinity,
                imageUrl: item,
                fadeOutDuration: const Duration(milliseconds: 200),
                fadeInDuration: const Duration(milliseconds: 200),
                placeholder: (context, url) => BlurHash(
                  hash: hashList[imagesList.indexOf(item)],
                  imageFit: BoxFit.cover,
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ))
        .toList();

    return SingleChildScrollView(
      child: Column(children: [
        Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  viewportFraction: 1.0,
                  height: MediaQuery.of(context).size.height * 0.35,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Positioned(
              bottom: 0,
              child: Parent(
                style: ParentStyle()
                  ..width(MediaQuery.of(context).size.width)
                  ..height(MediaQuery.of(context).size.height * 0.1)
                  ..linearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black87, Colors.transparent])
                  ..alignment.bottomCenter()
                  ..alignmentContent.bottomCenter(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imagesList.map((url) {
                    int index = imagesList.indexOf(url);
                    return Container(
                      width: 8.h,
                      height: 8.h,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 2.h),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Theme.of(context).primaryColor
                              : Colors.white),
                    );
                  }).toList(),
                ),
              ),
            ),
            Positioned(
              right: 40.h,
              bottom: -40.h,
              child: Parent(
                  style: ParentStyle()
                    ..width(80.h)
                    ..height(80.h)
                    ..background.color(Colors.white)
                    ..circle()
                    ..boxShadow(
                      color: Colors.grey,
                      offset: Offset(0.h, 3.5.h),
                      blur: 3.5.h,
                    )
                    ..alignmentContent.center(),
                  child: Center(
                    child: LikeButton(
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.favorite,
                          color: Theme.of(context).primaryColor,
                          size: 50.h,
                        );
                      },
                      padding: EdgeInsets.all(10.h),
                      size: 50.h,
                      onTap: (bool isLiked) async {
                        ProjectFavourite favourite = ProjectFavourite(
                          id: widget.project.id,
                          price: widget.project.price,
                          title: widget.project.name,
                          financing: widget.project.financing,
                          location: widget.project.location,
                          image: widget.project.picture[0],
                        );

                        await DatabaseProvider.db.insert(favourite);
                        if (!isLiked) {
                          final snackBar = SnackBar(
                              content: Text('Added To My Favourites List'));
                          Scaffold.of(context).hideCurrentSnackBar();
                          Scaffold.of(context).showSnackBar(snackBar);
                        }

                        return !isLiked;
                      },
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Align(
          alignment: Alignment.centerLeft,
          child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width / 2),
              child: Txt(widget.project.name,
                  style: TxtStyle()
                    ..fontFamily('Raleway')
                    ..fontSize(27.sp)
                    ..textColor(Colors.black87)
                    ..fontWeight(FontWeight.w900)
                    ..padding(left: 20.h))),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Row(
            children: <Widget>[
              Txt('By ',
                  style: TxtStyle()
                    ..fontFamily('Raleway')
                    ..fontSize(20.sp)
                    ..textColor(Colors.grey)
                    ..fontWeight(FontWeight.w500)),
              Txt('Optiven Group',
                  style: TxtStyle()
                    ..fontFamily('Raleway')
                    ..fontSize(20.sp)
                    ..textColor(Theme.of(context).primaryColor)
                    ..fontWeight(FontWeight.w500))
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Txt(widget.project.price,
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..fontSize(27.sp)
                ..textAlign.left()
                ..textColor(Colors.black87)
                ..fontWeight(FontWeight.w800)
                ..padding(left: 20.h)),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: <Widget>[
                      Icon(LineAwesomeIcons.map_marker,
                          color: Theme.of(context).primaryColor),
                      SizedBox(height: 10.h),
                      Txt(widget.project.location,
                          style: TxtStyle()
                            ..fontFamily('Raleway')
                            ..fontSize(20.sp)
                            ..textAlign.center()
                            ..textColor(Colors.grey)
                            ..fontWeight(FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: <Widget>[
                      Icon(LineAwesomeIcons.money,
                          color: Theme.of(context).primaryColor),
                      SizedBox(height: 10.h),
                      Txt(widget.project.pricerange,
                          style: TxtStyle()
                            ..fontFamily('Raleway')
                            ..fontSize(20.sp)
                            ..textAlign.center()
                            ..textColor(Colors.grey)
                            ..fontWeight(FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    children: <Widget>[
                      Icon(LineAwesomeIcons.balance_scale,
                          color: Theme.of(context).primaryColor),
                      SizedBox(height: 10.h),
                      Txt(widget.project.financing,
                          style: TxtStyle()
                            ..fontFamily('Raleway')
                            ..fontSize(20.sp)
                            ..textAlign.center()
                            ..textColor(Colors.grey)
                            ..fontWeight(FontWeight.w500))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.only(left: 20.h, right: 20.h),
          child: Align(
            alignment: Alignment.centerLeft,
            child: AnimatedCrossFade(
              firstChild: Txt(widget.project.description,
                  style: TxtStyle()
                    ..fontFamily('Raleway')
                    ..maxLines(2)
                    ..fontSize(20.sp)
                    ..textAlign.left()
                    ..textColor(Colors.black)
                    ..fontWeight(FontWeight.w500)),
              secondChild: Txt(widget.project.description,
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
          ),
        ),
        GestureDetector(
          onTap: _expand,
          child: Padding(
            padding: EdgeInsets.only(left: 20.h, bottom: 20.h, right: 30.h),
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
        Padding(
          padding: EdgeInsets.all(20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //Make A Call Button
              Parent(
                gesture: Gestures()
                  ..onTap(() {
                    FlutterPhoneState.startPhoneCall("0790 300300");
                  }),
                style: kProjectDetailCallButtonStyle,
                child: Container(
                  child: Txt('0790 300300', style: kProjectDetailCallTextStyle),
                ),
              ),
              //Make A Call Button
              Parent(
                gesture: Gestures()
                  ..onTap(() {
                    FlutterPhoneState.startPhoneCall("0723 400500");
                  }),
                style: kProjectDetailCallButtonStyle,
                child: Container(
                  child: Txt('0723 400500', style: kProjectDetailCallTextStyle),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
