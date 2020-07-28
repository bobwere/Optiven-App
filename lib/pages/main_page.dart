import 'package:cached_network_image/cached_network_image.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:optiven/pages/widgets/main_page_bottom_half.dart';
import 'package:optiven/pages/widgets/main_page_top_half.dart';
import 'package:optiven/pages/widgets/main_page_top_half.dart';
import 'package:shimmer/shimmer.dart';

import '../common/constants/styles.dart';
import '../projects/application/featured_project_bloc/featured_project_bloc.dart';
import '../projects/domain/entities/project_entity.dart';
import 'project_detail_page.dart';
import 'projects_page.dart';

class MainPage extends KFDrawerContent {
  MainPage({
    Key key,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TopHalfWidget(onPressed: widget.onMenuPressed),
          BottomHalfWidget(),
        ],
      ),
    ));
  }
}
