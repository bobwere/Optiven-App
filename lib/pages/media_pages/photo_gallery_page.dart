import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:optiven/injection_container.dart';
import 'package:shimmer/shimmer.dart';

import '../../projects/application/photo_gallery_bloc/photo_gallery_bloc.dart';
import '../../projects/domain/entities/photo_gallery_entity.dart';
import '../widgets/portfolio_gallery_image_widget.dart';
import 'portfolio_gallery_detail_page.dart';

class PhotoGalleryPage extends StatefulWidget {
  const PhotoGalleryPage({Key key}) : super(key: key);

  @override
  _PhotoGalleryPageState createState() => _PhotoGalleryPageState();
}

class _PhotoGalleryPageState extends State<PhotoGalleryPage>
    with AutomaticKeepAliveClientMixin<PhotoGalleryPage> {
  bool isLoading = false;
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhotoGalleryBloc>(
      create: (_) =>
          sl<PhotoGalleryBloc>()..add(PhotoGalleryEvent.getAllPhotos()),
      child: BlocBuilder<PhotoGalleryBloc, PhotoGalleryState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Text(''),
            loadingData: (_) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverPadding(
                    padding: EdgeInsets.all(10.h),
                    sliver: _buildShimmerContent(),
                  ),
                ],
              );
            },
            loadSuccess: (state) {
              final imgList = List<String>();
              final photos = state.photos.asList();

              for (PhotoGallery photo in photos) {
                imgList.add(photo.imageUrl);
              }
              return CustomScrollView(
                slivers: <Widget>[
                  SliverPadding(
                    padding: EdgeInsets.all(10.h),
                    sliver: _buildContent(imgList),
                  ),
                ],
              );
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
                              BlocProvider.of<PhotoGalleryBloc>(context)
                                  .add(PhotoGalleryEvent.getAllPhotos());
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
                            : Icon(Icons.replay, color: Colors.white),
                      )
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
                                BlocProvider.of<PhotoGalleryBloc>(context)
                                    .add(PhotoGalleryEvent.getAllPhotos());
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
      ),
    );
  }

  SliverGrid _buildContent(List<String> imagePaths) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.h,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return PortfolioGalleryImageWidget(
              imagePath: imagePaths[index],
              onImageTap: () {
                Get.to(PortfolioGalleryDetailPage(
                    imagePaths: imagePaths, currentIndex: index));
              });
        },
        childCount: imagePaths.length,
      ),
    );
  }

  SliverGrid _buildShimmerContent() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.h,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Shimmer.fromColors(
              baseColor: Colors.grey[400],
              highlightColor: Colors.grey[100],
              child: PortfolioGalleryShimmerImageWidget());
        },
        childCount: 15,
      ),
    );
  }
}
