import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/text_themes/text.dart';

class BlueButtonWithRaduis extends StatelessWidget {
   BlueButtonWithRaduis({super.key,required this.text,required this.onTab});
   String? text;
   void Function() onTab;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311.w,
      height: 52.h,
      child: MaterialButton(onPressed: onTab,
          color: Colors.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r)

          ),
          child: Text("$text".tr(),style: TextThemes.textWhiteSemi16,)
      ),
    )
    ;
  }
}
