import 'package:cached_network_image/cached_network_image.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:optiven/projects/infrastructure/models/favourite_model.dart';

import '../common/constants/styles.dart';
import '../common/helpers/sqflite_database_helper.dart';

import 'project_detail_page.dart';

class FavouritesPage extends KFDrawerContent {
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  List<ProjectFavourite> favouritesList;

  int count = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (favouritesList == null) {
      favouritesList = List<ProjectFavourite>();
      updateListView();
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.all(0),
          icon: Icon(
            LineAwesomeIcons.bars,
            color: Colors.white,
          ),
          onPressed: widget.onMenuPressed,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 2,
        title: Txt('My Favourites',
            style: kAppbarTitleStyle.clone()..textColor(Colors.white)),
        centerTitle: true,
      ),
      body: getFavouritesListView(),
    );
  }

  ListView getFavouritesListView() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Parent(
          style: ParentStyle()
            ..width(MediaQuery.of(context).size.width)
            ..border(
                all: 1.0, color: Color(0xFFDADCE0), style: BorderStyle.solid)
            ..margin(all: 20.h, top: 10.h, bottom: 10.h)
            ..borderRadius(all: 15.h),
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
                    imageUrl: this.favouritesList[index].image,
                    fadeOutDuration: const Duration(milliseconds: 250),
                    fadeInDuration: const Duration(milliseconds: 250),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.55),
                      child: Txt(this.favouritesList[index].title,
                          style: TxtStyle()
                            ..fontFamily('Raleway')
                            ..fontSize(24.sp)
                            ..textColor(Colors.black87)
                            ..fontWeight(FontWeight.w700)),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.delete,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        _delete(context, this.favouritesList[index]);
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                margin: EdgeInsets.all(20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(LineAwesomeIcons.map_marker,
                        color: Theme.of(context).primaryColor),
                    SizedBox(width: 10.h),
                    ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth:
                                MediaQuery.of(context).size.width - 140.h),
                        child: Txt(
                          this.favouritesList[index].location,
                          style: TxtStyle()
                            ..fontFamily('Raleway')
                            ..fontSize(20.sp)
                            ..textAlign.left()
                            ..textColor(Colors.grey)
                            ..fontWeight(FontWeight.w500),
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(LineAwesomeIcons.money,
                        color: Theme.of(context).primaryColor),
                    SizedBox(width: 10.h),
                    ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth:
                                MediaQuery.of(context).size.width - 140.h),
                        child: Txt(
                          this.favouritesList[index].price,
                          style: TxtStyle()
                            ..fontFamily('Raleway')
                            ..fontSize(20.sp)
                            ..textAlign.left()
                            ..textColor(Colors.grey)
                            ..fontWeight(FontWeight.w500),
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(LineAwesomeIcons.balance_scale,
                        color: Theme.of(context).primaryColor),
                    SizedBox(width: 10.h),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 140.h),
                      child: Txt(
                        this.favouritesList[index].financing,
                        style: TxtStyle()
                          ..fontFamily('Raleway')
                          ..fontSize(20.sp)
                          ..textAlign.left()
                          ..textColor(Colors.grey)
                          ..fontWeight(FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).hideCurrentSnackBar();
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void _delete(BuildContext context, ProjectFavourite favourite) async {
    int result = await DatabaseProvider.db.delete(favourite.id);

    if (result != 0) {
      _showSnackBar(context, 'Deleted Successfully');
      updateListView();
    }
  }

  void updateListView() {
    final dbFuture = DatabaseProvider.db.createDatabase();

    dbFuture.then((database) {
      Future<List<ProjectFavourite>> favouritesListFuture =
          DatabaseProvider.db.getFavourites();
      favouritesListFuture.then((favouritesList) {
        setState(() {
          this.favouritesList = favouritesList;
          this.count = favouritesList.length;
        });
      });
    });
  }
}
//this.favouritesList[index].financing
/*   Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width),
                        child: Txt(this.favouritesList[index].title,
                            style: TxtStyle()
                              ..fontFamily('Raleway')
                              ..fontSize(24.sp)
                              ..textColor(Colors.black87)
                              ..fontWeight(FontWeight.w700)),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.delete,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          _delete(context, this.favouritesList[index]);
                        },
                      )
                    ],
                  ),
                ),*/
