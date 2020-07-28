import 'package:cached_network_image/cached_network_image.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optiven/common/constants/strings.dart';
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:shimmer/shimmer.dart';

import '../../projects/application/awards_bloc/awards_bloc.dart';
import '../../projects/domain/entities/photo_gallery_entity.dart';

class AwardsAndMilestonesPage extends StatefulWidget {
  const AwardsAndMilestonesPage({Key key}) : super(key: key);

  @override
  _AwardsAndMilestonesPageState createState() =>
      _AwardsAndMilestonesPageState();
}

class _AwardsAndMilestonesPageState extends State<AwardsAndMilestonesPage>
    with AutomaticKeepAliveClientMixin<AwardsAndMilestonesPage> {
  bool isLoading = false;
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwardsBloc, AwardsState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Text(''),
          loadingData: (_) {
            return ListView(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 0),
                children: [
                  AwardsShimmerCard(),
                  AwardsShimmerCard(),
                  AwardsShimmerCard(),
                  AwardsShimmerCard(),
                ]);
          },
          loadSuccess: (state) {
            final awards = state.photos;
            return ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 0),
                itemBuilder: (context, index) {
                  final award = awards[index];
                  return AwardsCard(award: award);
                },
                itemCount: awards.size);
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
                              BlocProvider.of<AwardsBloc>(context)
                                  .add(AwardsEvent.getAllAwards());
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
                              BlocProvider.of<AwardsBloc>(context)
                                  .add(AwardsEvent.getAllAwards());
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

class AwardsCard extends StatefulWidget {
  const AwardsCard({Key key, @required this.award}) : super(key: key);
  final PhotoGallery award;
  

  @override
  _AwardsCardState createState() => _AwardsCardState();
}

class _AwardsCardState extends State<AwardsCard> {
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
                imageUrl: widget.award.imageUrl,
                fadeOutDuration: const Duration(milliseconds: 200),
                fadeInDuration: const Duration(milliseconds: 200),
                placeholder: (context, url) => BlurHash(
                  hash: hash,
                  imageFit: BoxFit.cover,
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Txt(widget.award.title,
              style: TxtStyle()
                ..fontFamily('Raleway')
                ..padding(right: 20.h, left: 20.h)
                ..fontSize(24.sp)
                ..textColor(Colors.black87)
                ..fontWeight(FontWeight.w700)),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}

class AwardsShimmerCard extends StatelessWidget {
  const AwardsShimmerCard({Key key}) : super(key: key);

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
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.6,
                height: 20.h,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
