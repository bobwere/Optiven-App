import 'package:division/division.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:optiven/common/utils/internet_connection.dart';
import 'package:optiven/projects/infrastructure/models/channel_model.dart';
import 'package:optiven/projects/infrastructure/models/video_model.dart';
import 'package:optiven/projects/services/youtube_api_service.dart';

import '../../common/constants/strings.dart';

import 'video_page.dart';

/// Creates list of video players
class VideoGalleryPage extends StatefulWidget {
  @override
  _VideoGalleryPageState createState() => _VideoGalleryPageState();
}

class _VideoGalleryPageState extends State<VideoGalleryPage>
    with AutomaticKeepAliveClientMixin<VideoGalleryPage> {
  Channel _channel;
  bool _isLoading = false;
  bool isLoading = false;
  Future<bool> _isConnected;
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _initChannel();
    //_isConnected = _initisConnected();
  }

  Future<bool> _initisConnected() async {
    return await isConnected();
  }

  _initChannel() async {
    Channel channel =
        await APIService.instance.fetchChannel(channelId: optivenChannelId);
    setState(() {
      _channel = channel;
    });
  }

  _buildProfileInfo() {
    return Container(
      margin: EdgeInsets.all(20.h),
      padding: EdgeInsets.all(20.h),
      height: 150.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 1.h),
            blurRadius: 6.h,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 45.h,
            backgroundImage: NetworkImage(_channel.profilePictureUrl),
          ),
          SizedBox(width: 30.h),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Txt(
                  _channel.title,
                  style: TxtStyle()
                    ..textColor(Colors.black)
                    ..fontFamily('Montserrat')
                    ..fontSize(32.sp)
                    ..textColor(Colors.black)
                    ..fontWeight(FontWeight.w700)
                    ..textOverflow(TextOverflow.ellipsis),
                ),
                Text(
                  '${_channel.subscriberCount} subscribers',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildVideo(Video video) {
    return GestureDetector(
      onTap: () {
        Get.to(VideoScreen(id: video.id));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
        padding: EdgeInsets.all(20.h),
        height: 200.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 1.h),
              blurRadius: 6.h,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
              width: 210.h,
              image: NetworkImage(video.thumbnailUrl),
            ),
            SizedBox(width: 20.h),
            Expanded(
              child: Txt(
                video.title,
                style: TxtStyle()
                  ..textColor(Colors.black)
                  ..fontFamily('Montserrat')
                  ..fontSize(22.sp)
                  ..textColor(Colors.black)
                  ..fontWeight(FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _loadMoreVideos() async {
    _isLoading = true;
    List<Video> moreVideos = await APIService.instance
        .fetchVideosFromPlaylist(playlistId: _channel.uploadPlaylistId);
    List<Video> allVideos = _channel.videos..addAll(moreVideos);
    setState(() {
      _channel.videos = allVideos;
    });
    _isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return FutureBuilder<bool>(
      future: isConnected(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.data == true) {
          return _buildVideosList(context);
        } else {
          return _buildNoInternetWidget(context);
        }
      },
    );
  }

  Widget _buildNoInternetWidget(BuildContext context) {
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
                    setState(() {
                      isLoading = !isLoading;
                      print(isLoading);
                    });
                    _initChannel();
                    await Future.delayed(Duration(seconds: 3));

                    setState(() {
                      isLoading = !isLoading;
                      print(isLoading);
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
  }

  Widget _buildVideosList(BuildContext context) {
    return _channel != null
        ? NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification scrollDetails) {
              if (!_isLoading &&
                  _channel.videos.length != int.parse(_channel.videoCount) &&
                  scrollDetails.metrics.pixels ==
                      scrollDetails.metrics.maxScrollExtent) {
                _loadMoreVideos();
              }
              return false;
            },
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 1 + _channel.videos.length,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return _buildProfileInfo();
                }
                Video video = _channel.videos[index - 1];
                return _buildVideo(video);
              },
            ),
          )
        : Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).primaryColor,
              ),
            ),
          );
  }
}
