import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:shimmer/shimmer.dart';

import '../common/constants/styles.dart';
import '../injection_container.dart';
import '../projects/application/testimonial_bloc/testimonial_bloc.dart';
import '../projects/domain/entities/testimonial_entity.dart';

class TestimonialsPage extends KFDrawerContent {
  @override
  _TestimonialsPageState createState() => _TestimonialsPageState();
}

class _TestimonialsPageState extends State<TestimonialsPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TestimonialBloc>(
      create: (context) =>
          sl<TestimonialBloc>()..add(TestimonialEvent.getAllTestimonials()),
      child: Scaffold(
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
          title: Txt(
            'Testimonials',
            style: kAppbarTitleStyle.clone()..textColor(Colors.white),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<TestimonialBloc, TestimonialState>(
          builder: (context, state) {
            return state.map(
              initial: (_) {
                return Text('');
              },
              loadingData: (_) {
                return ListView(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  children: <Widget>[
                    TestimonialShimmerCard(),
                    TestimonialShimmerCard(),
                    TestimonialShimmerCard(),
                    TestimonialShimmerCard(),
                    TestimonialShimmerCard(),
                  ],
                );
              },
              loadSuccess: (state) {
                final testimonials = state.testimonials;
                return ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    itemCount: testimonials.size,
                    itemBuilder: (context, index) {
                      final testimonial = testimonials[index];
                      return TestimonialCard(testimonial: testimonial);
                    });
              },
              loadFailure: (state) {
                return state.testimonialFailure.map(unexpected: (_) {
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
                                  BlocProvider.of<TestimonialBloc>(context).add(
                                      TestimonialEvent.getAllTestimonials());
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
                                  BlocProvider.of<TestimonialBloc>(context).add(
                                      TestimonialEvent.getAllTestimonials());
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
      ),
    );
  }
}

class TestimonialCard extends StatefulWidget {
  const TestimonialCard({Key key, @required this.testimonial})
      : super(key: key);
  final Testimonial testimonial;
  @override
  _TestimonialCardState createState() => _TestimonialCardState();
}

class _TestimonialCardState extends State<TestimonialCard> {
  bool _isExpanded = false;

  void _expand() {
    setState(() {
      _isExpanded ? _isExpanded = false : _isExpanded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
        style: ParentStyle()
          ..width(MediaQuery.of(context).size.width)
          ..border(all: 1.0, color: Color(0xFFDADCE0), style: BorderStyle.solid)
          ..margin(all: 20.h, top: 10.h, bottom: 10.h)
          ..padding(all: 20.h)
          ..borderRadius(all: 15.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 2),
                child: Txt(widget.testimonial.name,
                    style: TxtStyle()
                      ..fontFamily('Raleway')
                      ..fontSize(24.sp)
                      ..textColor(Colors.black87)
                      ..fontWeight(FontWeight.w700)),
              ),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerLeft,
              child: AnimatedCrossFade(
                firstChild: Txt(widget.testimonial.review,
                    style: TxtStyle()
                      ..fontFamily('Raleway')
                      ..maxLines(4)
                      ..fontSize(20.sp)
                      ..textAlign.left()
                      ..textColor(Colors.black)
                      ..fontWeight(FontWeight.w500)),
                secondChild: Txt(widget.testimonial.review,
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
            GestureDetector(
              onTap: _expand,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.h, right: 30.h),
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
        ));
  }
}

class TestimonialShimmerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Parent(
        style: ParentStyle()
          ..width(MediaQuery.of(context).size.width)
          ..border(all: 1.0, color: Color(0xFFDADCE0), style: BorderStyle.solid)
          ..margin(all: 20.h, top: 10.h, bottom: 10.h)
          ..padding(all: 20.h)
          ..borderRadius(all: 15.h),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[400],
          highlightColor: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width / 2,
                    height: 20.h),
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 20.h),
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 20.h),
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 20.h),
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 20.h),
              ),
            ],
          ),
        ));
  }
}
