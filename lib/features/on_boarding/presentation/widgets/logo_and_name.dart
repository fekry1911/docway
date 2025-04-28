import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/text_themes/text.dart';

class LogoAndName  extends StatelessWidget {
  const LogoAndName ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/icons/logo.svg"),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            child: Text("DocWay",style: TextThemes.TextStyle30Bold,))
      ],
    );

  }
}
