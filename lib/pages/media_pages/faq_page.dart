import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optiven/projects/infrastructure/data_sources/faq_data.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({Key key}) : super(key: key);

  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage>
    with AutomaticKeepAliveClientMixin<FaqPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      itemCount: faqList.length,
      itemBuilder: (BuildContext context, int index) {
        return FaqCard(faq: faqList[index]);
      },
    );
  }
}

class FaqCard extends StatelessWidget {
  const FaqCard({Key key, @required this.faq}) : super(key: key);

  final Faq faq;

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle()
        ..width(MediaQuery.of(context).size.width)
        ..border(all: 1.0, color: Color(0xFFDADCE0), style: BorderStyle.solid)
        ..margin(all: 20.h, top: 10.h, bottom: 10.h)
        ..padding(all: 20.h)
        ..borderRadius(all: 15.h),
      child: Container(
        child: Column(
          children: <Widget>[
            //Question
            Align(
              alignment: Alignment.centerLeft,
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
                child: Txt(
                  faq.question,
                  style: TxtStyle()
                    ..fontFamily('Raleway')
                    ..fontSize(24.sp)
                    ..textColor(Theme.of(context).primaryColor)
                    ..fontWeight(FontWeight.w700),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Txt(faq.answer,
                  style: TxtStyle()
                    ..fontFamily('Raleway')
                    ..maxLines(4)
                    ..fontSize(20.sp)
                    ..textAlign.left()
                    ..textColor(Colors.black)
                    ..fontWeight(FontWeight.w500)),
            ),
          ],
        ),
      ),
    );
  }
}
