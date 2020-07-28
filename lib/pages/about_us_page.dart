import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:optiven/injection_container.dart';
import 'package:optiven/projects/application/awards_bloc/awards_bloc.dart';
import 'package:optiven/projects/application/our_team_bloc/our_team_bloc.dart';

import '../common/constants/styles.dart';
import 'about_us_pages/awards_and_milestones_page.dart';
import 'about_us_pages/contact_us_page.dart';
import 'about_us_pages/corporate_social_responsiblities_page.dart';
import 'about_us_pages/our_partners_page.dart';
import 'about_us_pages/our_team_page.dart';
import 'about_us_pages/who_we_are_page.dart';
import 'about_us_pages/why_us_page.dart';

class AboutUsPage extends KFDrawerContent {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
    _controller = TabController(vsync: this, length: 7);
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
        BlocProvider<OurTeamBloc>(
          create: (_) => sl<OurTeamBloc>()..add(OurTeamEvent.getOurTeam()),
        ),
        BlocProvider<AwardsBloc>(
          create: (_) => sl<AwardsBloc>()..add(AwardsEvent.getAllAwards()),
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
                title: Txt('About Us',
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
                      text: "Contact Us",
                    ),
                    Tab(
                      text: "Who We Are",
                    ),
                    Tab(
                      text: "Our Team",
                    ),
                    Tab(
                      text: "Why Us",
                    ),
                    Tab(
                      text: "Awards & Milestones",
                    ),
                    Tab(
                      text: "Our Partners",
                    ),
                    Tab(
                      text: "Corporate Social Responsiblity",
                    ),
                  ],
                  controller: _controller,
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              ContactUsPage(),
              WhoWeArePage(),
              OurTeamPage(),
              WhyUsPage(),
              AwardsAndMilestonesPage(),
              OurPartnersPage(),
              CorporateSocialResponibilityPage(),
            ],
            controller: _controller,
          ),
        ),
      ),
    );
  }
}
