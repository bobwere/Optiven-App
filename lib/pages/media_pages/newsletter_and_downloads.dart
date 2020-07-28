import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:optiven/injection_container.dart';
import 'package:shimmer/shimmer.dart';

import '../../projects/application/newsletter_bloc/newsletter_bloc.dart';
import '../../projects/domain/entities/newsletter_entity.dart';
import 'pdf_viewer_page.dart';

class NewsletterAndDownloadsPage extends StatefulWidget {
  const NewsletterAndDownloadsPage({Key key}) : super(key: key);

  @override
  _NewsletterAndDownloadsPageState createState() =>
      _NewsletterAndDownloadsPageState();
}

class _NewsletterAndDownloadsPageState extends State<NewsletterAndDownloadsPage>
    with AutomaticKeepAliveClientMixin<NewsletterAndDownloadsPage> {
  bool isLoading = false;
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsletterBloc>(
      create: (_) =>
          sl<NewsletterBloc>()..add(NewsletterEvent.getAllNewsletters()),
      child: BlocBuilder<NewsletterBloc, NewsletterState>(
          builder: (context, state) {
        return state.map(
            initial: (_) => Text(''),
            loadingData: (_) {
              return ListView.separated(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return NewsletterShimmerTile();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              );
            },
            loadSuccess: (state) {
              final newsletters = state.newsletters;
              return ListView.separated(
                itemCount: newsletters.size,
                itemBuilder: (BuildContext context, int index) {
                  final newsletter = newsletters[index];
                  return NewsletterTile(newsletter: newsletter);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              );
            },
            loadFailure: (state) {
              return state.newsletterFailure.map(unexpected: (_) {
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
                                BlocProvider.of<NewsletterBloc>(context)
                                    .add(NewsletterEvent.getAllNewsletters());
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
                                BlocProvider.of<NewsletterBloc>(context)
                                    .add(NewsletterEvent.getAllNewsletters());
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
            });
      }),
    );
  }
}

class NewsletterTile extends StatelessWidget {
  const NewsletterTile({Key key, @required this.newsletter}) : super(key: key);
  final Newsletter newsletter;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Txt(newsletter.title),
      trailing: Parent(
        style: ParentStyle()..padding(left: 20.h, right: 20.h),
        gesture: Gestures()
          ..onTap(() {
            Get.to(
              PdfViewerPage(documentUrl: newsletter.pdfUrl),
            );
          }),
        child: Icon(
          LineAwesomeIcons.download,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class NewsletterShimmerTile extends StatelessWidget {
  const NewsletterShimmerTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400],
      highlightColor: Colors.grey[100],
      child: ListTile(
        title: Container(height: 20.h, width: 150.h, color: Colors.white),
        trailing: Parent(
            style: ParentStyle()..padding(left: 20.h, right: 20.h),
            child: Container(height: 30.h, width: 30.h, color: Colors.white)),
      ),
    );
  }
}
