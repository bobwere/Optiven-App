import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:optiven/common/constants/styles.dart';

class TopHalfWidget extends StatelessWidget {
  const TopHalfWidget({Key key, @required this.onPressed}) : super(key: key);
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.57,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/homepage_image.jpg'),
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50.h),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Parent(
                style: kMenuButtonStyle,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    LineAwesomeIcons.bars,
                    color: Colors.white,
                  ),
                  onPressed: onPressed,
                ),
              ),
              SizedBox(width: 80.h),
              Txt(
                'OPTIVEN',
                style: kHomeTitleStyle,
              )
            ],
          ),
          Spacer(),
          Txt('DISCOVER', style: kHomePageTextStyle),
          Txt('AFFORDABLE', style: kHomePageTextStyle),
          Txt('PROPERTIES', style: kHomePageTextStyle),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
