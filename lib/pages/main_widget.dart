import 'package:division/division.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../common/constants/styles.dart';
import '../common/utils/class_builder.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: ClassBuilder.fromString('MainPage'), //MainPage()
      items: [
        KFDrawerItem.initWithPage(
          text: Txt('Home', style: kDrawerMenuNameStyle),
          icon: Icon(LineAwesomeIcons.home, color: Colors.white),
          page: ClassBuilder.fromString('MainPage'), //MainPage()
        ),
        KFDrawerItem.initWithPage(
          text: Txt(
            'Projects',
            style: kDrawerMenuNameStyle,
          ),
          icon: Icon(LineAwesomeIcons.building, color: Colors.white),
          page: ClassBuilder.fromString('ProjectsPage'), //ProjectsPage()
        ),
        KFDrawerItem.initWithPage(
          text: Txt(
            'Favourites',
            style: kDrawerMenuNameStyle,
          ),
          icon: Icon(Icons.favorite_border, color: Colors.white),
          page: ClassBuilder.fromString('FavouritesPage'), //FavouritesPage()
        ),
        KFDrawerItem.initWithPage(
          text: Txt(
            'Testimonials',
            style: kDrawerMenuNameStyle,
          ),
          icon: Icon(LineAwesomeIcons.comments, color: Colors.white),
          page:
              ClassBuilder.fromString('TestimonialsPage'), //TestimonialsPage()
        ),
        KFDrawerItem.initWithPage(
          text: Txt(
            'Media',
            style: kDrawerMenuNameStyle,
          ),
          icon: Icon(LineAwesomeIcons.play, color: Colors.white),
          page: ClassBuilder.fromString('MediaPage'), //MediaPage()
        ),
        KFDrawerItem.initWithPage(
          text: Txt(
            'My Money',
            style: kDrawerMenuNameStyle,
          ),
          icon: Icon(LineAwesomeIcons.money, color: Colors.white),
          page: ClassBuilder.fromString('MyMoneyPage'), //MyMoneyPage()
        ),
        KFDrawerItem.initWithPage(
          text: Txt(
            'About Us',
            style: kDrawerMenuNameStyle,
          ),
          icon: Icon(LineAwesomeIcons.cogs, color: Colors.white),
          page: ClassBuilder.fromString('AboutUsPage'), //AboutUsPage()
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        scrollable: true,
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Image.asset(
              'assets/images/optiven_logo2.png',
              alignment: Alignment.centerLeft,
            ),
          ),
        ),
        footer: Text(''),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
