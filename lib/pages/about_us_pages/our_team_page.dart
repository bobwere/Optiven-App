import 'package:cached_network_image/cached_network_image.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:optiven/common/constants/strings.dart';
import 'package:shimmer/shimmer.dart';
import '../../projects/application/our_team_bloc/our_team_bloc.dart';
import '../../projects/domain/entities/photo_gallery_entity.dart';

class OurTeamPage extends StatefulWidget {
  const OurTeamPage({Key key}) : super(key: key);

  @override
  _OurTeamPageState createState() => _OurTeamPageState();
}

class _OurTeamPageState extends State<OurTeamPage>
    with AutomaticKeepAliveClientMixin<OurTeamPage> {
  bool isLoading = false;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OurTeamBloc, OurTeamState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Text('');
          },
          loadingData: (_) {
            return ListView(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                children: [
                  ProfileShimmerCard(),
                  ProfileShimmerCard(),
                  ProfileShimmerCard(),
                  ProfileShimmerCard(),
                ]);
          },
          loadSuccess: (state) {
            final profiles = state.photos;
            return ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                itemCount: profiles.size,
                itemBuilder: (context, index) {
                  final profile = profiles[index];
                  return ProfileCard(profile: profile);
                });
          },
          loadFailure: (state) {
            return state.photoGalleryFailure.map(unexpected: (_) {
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
                              BlocProvider.of<OurTeamBloc>(context)
                                  .add(OurTeamEvent.getOurTeam());
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
                              BlocProvider.of<OurTeamBloc>(context)
                                  .add(OurTeamEvent.getOurTeam());
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
      },
    );
  }
}

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key key, @required this.profile}) : super(key: key);
  final PhotoGallery profile;

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  bool _isExpanded = false;
  String hash;

  void _expand() {
    setState(() {
      _isExpanded ? _isExpanded = false : _isExpanded = true;
    });
  }

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
        ..borderRadius(all: 15.h),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  imageUrl: widget.profile.imageUrl,
                  fadeOutDuration: const Duration(milliseconds: 200),
                  fadeInDuration: const Duration(milliseconds: 200),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  placeholder: (context, url) => BlurHash(
                    hash: hash,
                    imageFit: BoxFit.cover,
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
              child: Txt(widget.profile.title,
                  style: TxtStyle()
                    ..fontFamily('Raleway')
                    ..fontSize(24.sp)
                    ..padding(left: 20.h)
                    ..textColor(Colors.black87)
                    ..fontWeight(FontWeight.w700)),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 20.h, right: 20.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: AnimatedCrossFade(
                  firstChild: Txt(widget.profile.description,
                      style: TxtStyle()
                        ..fontFamily('Raleway')
                        ..maxLines(3)
                        ..fontSize(20.sp)
                        ..textAlign.left()
                        ..textColor(Colors.black)
                        ..fontWeight(FontWeight.w500)),
                  secondChild: Txt(widget.profile.description,
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
          ],
        ),
      ),
    );
  }
}

class ProfileShimmerCard extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                padding: EdgeInsets.only(left: 20.h, right: 20.h),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 20.h,
                ),
              ),

              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 20.h, right: 20.h),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 20.h,
                ),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.only(left: 20.h, right: 20.h),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 20.h,
                ),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.only(left: 20.h, right: 20.h),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
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
