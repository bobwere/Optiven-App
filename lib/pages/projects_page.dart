import 'package:cached_network_image/cached_network_image.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:optiven/injection_container.dart';
import 'package:optiven/projects/application/projects_bloc/project_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../common/constants/styles.dart';

import '../projects/domain/entities/project_entity.dart';
import 'project_detail_page.dart';

class ProjectsWithBackButtonPage extends KFDrawerContent {
  @override
  _ProjectsWithBackButtonPageState createState() =>
      _ProjectsWithBackButtonPageState();
}

class _ProjectsWithBackButtonPageState
    extends State<ProjectsWithBackButtonPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 2,
        title: Txt('Projects',
            style: kAppbarTitleStyle.clone()..textColor(Colors.white)),
        centerTitle: true,
      ),
      body: BlocProvider<ProjectBloc>(
        create: (_) => sl<ProjectBloc>()..add(ProjectEvent.getAllProjects()),
        child: BlocBuilder<ProjectBloc, ProjectState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Text(''),
                loadingData: (_) {
                  return ListView(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 0),
                    children: <Widget>[
                      ProjectsShimmerCard(),
                      ProjectsShimmerCard(),
                      ProjectsShimmerCard(),
                      ProjectsShimmerCard(),
                    ],
                  );
                },
                loadSuccess: (state) {
                  final projects = state.projects;
                  return ListView.builder(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 0),
                      itemBuilder: (context, index) {
                        final project = projects[index];
                        return ProjectsCard(project: project);
                      },
                      itemCount: projects.size);
                },
                loadFailure: (state) {
                  return state.projectFailure.map(unexpected: (_) {
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
                                    BlocProvider.of<ProjectBloc>(context)
                                        .add(ProjectEvent.getAllProjects());
                                    await Future.delayed(Duration(seconds: 3));
                                    setState(() {
                                      isLoading = !isLoading;
                                    });
                                  }
                                }),
                              style: ParentStyle()
                                ..height(70.h)
                                ..width(70.h)
                                ..background
                                    .color(Theme.of(context).primaryColor)
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
                                    BlocProvider.of<ProjectBloc>(context)
                                        .add(ProjectEvent.getAllProjects());
                                    await Future.delayed(Duration(seconds: 3));
                                    setState(() {
                                      isLoading = !isLoading;
                                    });
                                  }
                                }),
                              style: ParentStyle()
                                ..height(70.h)
                                ..width(70.h)
                                ..background
                                    .color(Theme.of(context).primaryColor)
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
                });
          },
        ),
      ),
    );
  }
}

class ProjectsPage extends KFDrawerContent {
  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
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
        title: Txt('Projects',
            style: kAppbarTitleStyle.clone()..textColor(Colors.white)),
        centerTitle: true,
      ),
      body: BlocProvider<ProjectBloc>(
        create: (_) => sl<ProjectBloc>()..add(ProjectEvent.getAllProjects()),
        child: BlocBuilder<ProjectBloc, ProjectState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => Text(''),
                loadingData: (_) {
                  return ListView(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 0),
                    children: <Widget>[
                      ProjectsShimmerCard(),
                      ProjectsShimmerCard(),
                      ProjectsShimmerCard(),
                      ProjectsShimmerCard(),
                    ],
                  );
                },
                loadSuccess: (state) {
                  final projects = state.projects;
                  return ListView.builder(
                      // shrinkWrap: true,
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 0),
                      itemBuilder: (context, index) {
                        final project = projects[index];
                        return ProjectsCard(project: project);
                      },
                      itemCount: projects.size);
                },
                loadFailure: (state) {
                  return state.projectFailure.map(unexpected: (_) {
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
                                    BlocProvider.of<ProjectBloc>(context)
                                        .add(ProjectEvent.getAllProjects());
                                    await Future.delayed(Duration(seconds: 3));
                                    setState(() {
                                      isLoading = !isLoading;
                                    });
                                  }
                                }),
                              style: ParentStyle()
                                ..height(70.h)
                                ..width(70.h)
                                ..background
                                    .color(Theme.of(context).primaryColor)
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
                                    BlocProvider.of<ProjectBloc>(context)
                                        .add(ProjectEvent.getAllProjects());
                                    await Future.delayed(Duration(seconds: 3));
                                    setState(() {
                                      isLoading = !isLoading;
                                    });
                                  }
                                }),
                              style: ParentStyle()
                                ..height(70.h)
                                ..width(70.h)
                                ..background
                                    .color(Theme.of(context).primaryColor)
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
                });
          },
        ),
      ),
    );
  }
}

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({Key key, @required this.project}) : super(key: key);
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        //..maxHeight(700.h)
        ..width(MediaQuery.of(context).size.width)
        ..border(all: 1.0, color: Color(0xFFDADCE0), style: BorderStyle.solid)
        ..margin(all: 20.h, top: 10.h, bottom: 10.h)
        ..borderRadius(all: 15.h)
        ..ripple(true, splashColor: Theme.of(context).accentColor),
      gesture: Gestures()
        ..onTap(() {
          Get.to(ProjectDetailPage(project: project));
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
                imageUrl: project.picture[0],
                fadeOutDuration: const Duration(milliseconds: 250),
                fadeInDuration: const Duration(milliseconds: 250),
                placeholder: (context, url) => BlurHash(
                  hash: project.hash[0],
                  imageFit: BoxFit.cover,
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
                child: Txt(project.name,
                    style: TxtStyle()
                      ..fontFamily('Raleway')
                      ..fontSize(24.sp)
                      ..textAlign.left()
                      ..textColor(Colors.black87)
                      ..fontWeight(FontWeight.w700)),
              ),
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
                        maxWidth: MediaQuery.of(context).size.width - 140.h),
                    child: Txt(
                      project.location,
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
                        maxWidth: MediaQuery.of(context).size.width - 140.h),
                    child: Txt(
                      project.pricerange,
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
                    project.financing,
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
  }
}

class ProjectsShimmerCard extends StatelessWidget {
  const ProjectsShimmerCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..width(MediaQuery.of(context).size.width)
        ..border(all: 1.0, color: Color(0xFFDADCE0), style: BorderStyle.solid)
        ..margin(all: 20.h, top: 10.h, bottom: 10.h)
        ..borderRadius(all: 15.h),
      child: Container(
        child: Shimmer.fromColors(
          baseColor: Colors.grey[400],
          highlightColor: Colors.grey[100],
          child: Column(
            children: <Widget>[
              //Image from database
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.h),
                      topLeft: Radius.circular(15.h)),
                ),
                width: double.infinity,
                height: 250.h,
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 20.h,
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 20.h,
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 20.h,
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
