import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors/colors.dart';
import '../../../../core/theme/text_themes/text.dart';

class CustomShape extends StatelessWidget {
   CustomShape({super.key,required this.image,required this.text});
   String? image;
   String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.lightWhite,
              radius: 30.r,
            ),
           Image.asset(image!,fit: BoxFit.cover,height: 25.h,width: 25.w,)
          ],
          
        ),
        SizedBox(height: 10.h,),
        Text(text!,style: TextThemes.font12BlackRegular,)
      ],
    );
  }
}
