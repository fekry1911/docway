import 'package:docway/core/theme/text_themes/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconAndInfo extends StatelessWidget {
   IconAndInfo({super.key,required this.image,required this.data,required this.onPreesed,required this.backColor});
   String image;
   String data;
   void Function()? onPreesed;
   Color backColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPreesed,
      child: ListTile(
        leading: GestureDetector(
          child: CircleAvatar(
            backgroundColor: backColor,//Color(0xffEAF2FF),
            radius: 40.r,child: Image.asset("$image",fit: BoxFit.cover,),
          ),
        ),
        title: Text('$data',style: TextThemes.font14BlackSemiBold.copyWith(color: Color(0xff242424)),),

      ),
    );
  }
}
