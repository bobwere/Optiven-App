import 'package:cached_network_image/cached_network_image.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:optiven/common/constants/styles.dart';
import 'package:optiven/pages/project_detail_page.dart';
import 'package:optiven/pages/projects_page.dart';
import 'package:optiven/projects/application/featured_project_bloc/featured_project_bloc.dart';
import 'package:optiven/projects/domain/entities/project_entity.dart';
import 'package:shimmer/shimmer.dart';

class BottomHalfWidget extends StatefulWidget {
  const BottomHalfWidget({Key key}) : super(key: key);

  @override
  _BottomHalfWidgetState createState() => _BottomHalfWidgetState();
}

class _BottomHalfWidgetState extends State<BottomHalfWidget> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.43,
      child: Column(
        children: <Widget>[
          //Row Name and See All Text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Txt('Featured Projects', style: kFeaturedTextStyle),
                Txt(
                  'See more',
                  style: kSeeMoreTextStyle,
                  gesture: Gestures()
                    ..onTap(() {
                      Get.to(ProjectsWithBackButtonPage());
                    }),
                ),
              ],
            ),
          ),
          //Horizontal ListView
          BlocBuilder<FeaturedProjectBloc, FeaturedProjectState>(
            builder: (context, state) {
              return state.map(
                  initial: (_) => Text(''),
                  loadingData: (_) {
                    return SizedBox(
                      height: 300.h,
                      child: ListView(
                        padding: EdgeInsets.only(right: 10.h, left: 10.h),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ProjectShimmerCard(),
                          ProjectShimmerCard(),
                          ProjectShimmerCard(),
                        ],
                      ),
                    );
                  },
                  loadSuccess: (state) {
                    final projects = state.projects;
                    return SizedBox(
                      height: 300.h,
                      child: ListView.builder(
                          padding: EdgeInsets.only(right: 10.h, left: 10.h),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final project = projects[index];
                            return ProjectCard(project: project);
                          },
                          itemCount: projects.size),
                    );
                  },
                  loadFailure: (state) {
                    return state.projectFailure.map(unexpected: (_) {
                      return Container(
                        height: 300.h,
                        child: Center(
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
                                      BlocProvider.of<FeaturedProjectBloc>(
                                              context)
                                          .add(FeaturedProjectEvent
                                              .getAllFeaturedProjects());
                                      await Future.delayed(
                                          const Duration(seconds: 3));
                                      setState(() {
                                        isLoading = !isLoading;
                                      });
                                    }
                                  }),
                                style: kLoadedFailureButtonStyle,
                                child: isLoading
                                    ? CircularProgressIndicator(
                                        backgroundColor: Colors.white,
                                      )
                                    : Icon(Icons.replay, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      );
                    }, noInternet: (_) {
                      return Container(
                        height: 300.h,
                        child: Center(
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
                                      BlocProvider.of<FeaturedProjectBloc>(
                                              context)
                                          .add(FeaturedProjectEvent
                                              .getAllFeaturedProjects());
                                      await Future.delayed(
                                          const Duration(seconds: 3));
                                      setState(() {
                                        isLoading = !isLoading;
                                      });
                                    }
                                  }),
                                style: kLoadedFailureButtonStyle,
                                child: isLoading
                                    ? CircularProgressIndicator(
                                        backgroundColor: Colors.white,
                                      )
                                    : Icon(Icons.replay, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      );
                    });
                  });
            },
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  const ProjectCard({Key key, @required this.project}) : super(key: key);

  final Project project;

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      gesture: Gestures()
        ..onTap(() {
          Get.to(ProjectDetailPage(project: widget.project));
        }),
      style: kMainPageCardStyle,
      child: Column(children: [
        //Image from database
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15.h)),
          child: SizedBox(
            width: 350.h,
            height: 210.h,
            child: CachedNetworkImage(
              fadeOutDuration: const Duration(milliseconds: 250),
              fadeInDuration: const Duration(milliseconds: 250),
              placeholderFadeInDuration: const Duration(milliseconds: 50),
              placeholder: (context, url) => BlurHash(
                hash: widget.project.hash[0],
                imageFit: BoxFit.cover,
              ),
              imageUrl: widget.project.picture[0],
              errorWidget: (context, url, error) => Icon(Icons.error),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20.h),

        //Row of Price & Favorite Icon
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 280.h),
                  child: Txt(
                    widget.project.name,
                    style: kProjectName,
                  ),
                ),
                Txt(
                  widget.project.price,
                  style: kProjectPrice,
                ),
              ],
            ),
            Parent(
              style: kMainPageGreenNextButtonStyle,
              child: Icon(Icons.navigate_next, color: Colors.white),
            ),
          ],
        ),
      ]),
    );
  }
}

class ProjectShimmerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..width(350.h)
        ..padding(left: 10.h, right: 10.h),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[400],
        highlightColor: Colors.grey[100],
        child: Column(children: [
          //Image from database
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.h)),
            ),
            width: 350.h,
            height: 210.h,
          ),
          SizedBox(height: 20.h),

          //Row of Price & Favorite Icon
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(color: Colors.white, width: 150.h, height: 20.h),
                  SizedBox(height: 5.h),
                  Container(color: Colors.white, width: 100.h, height: 20.h),
                ],
              ),
              Parent(
                style: ParentStyle()
                  ..background.color(Colors.white)
                  ..height(40.h)
                  ..width(40.h)
                  ..circle(true),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
