import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../common/constants/styles.dart';
import '../injection_container.dart';
import '../projects/application/news_and_blogs_bloc/news_and_blogs_bloc.dart';
import 'media_pages/faq_page.dart';
import 'media_pages/news_and_blogs_page.dart';
import 'media_pages/newsletter_and_downloads.dart';
import 'media_pages/philanthropy_page.dart';
import 'media_pages/photo_gallery_page.dart';
import 'media_pages/video_gallery_page.dart';

class MediaPage extends KFDrawerContent {
  @override
  _MediaPageState createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
    _controller = TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsAndBlogsBloc>(
          create: (_) => sl<NewsAndBlogsBloc>()
            ..add(NewsAndBlogsEvent.getFirstNewsAndBlogs()),
        ),
      ],
      child: Scaffold(
        body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: IconButton(
                  icon: Icon(
                    LineAwesomeIcons.bars,
                    color: Colors.white,
                  ),
                  onPressed: widget.onMenuPressed,
                ),
                centerTitle: true,
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 2,
                title: Txt('Media',
                    style: kAppbarTitleStyle.clone()..textColor(Colors.white)),
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar(
                  labelColor: Colors.white,
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
                  isScrollable: true,
                  indicatorWeight: 3.0,
                  indicatorColor: Colors.white,
                  tabs: <Tab>[
                    Tab(
                      text: "News & Blogs",
                    ),
                    Tab(
                      text: "Photo Gallery",
                    ),
                    Tab(
                      text: "Video Gallery",
                    ),
                    Tab(
                      text: "Philanthropy",
                    ),
                    Tab(
                      text: "Newsletter & Downloads",
                    ),
                    Tab(
                      text: "FAQ",
                    ),
                  ],
                  controller: _controller,
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              NewsAndBlogsPage(),
              PhotoGalleryPage(),
              VideoGalleryPage(),
              PhilanthropyPage(),
              NewsletterAndDownloadsPage(),
              FaqPage()
            ],
            controller: _controller,
          ),
        ),
      ),
    );
  }
}
