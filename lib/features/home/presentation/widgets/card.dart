import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/text_themes/text.dart';

class CardDetails extends StatelessWidget {
   CardDetails({super.key,required this.imageDoctor,required this.name,required this.specialize,required this.degree});
   String? imageDoctor;
   String? name;
   String? specialize;
  String? degree;
   @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .1,
      borderOnForeground: true,
      color: Colors.white,
      child:Padding(
        padding:  EdgeInsets.all(5.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30.r)),
              child: Image.network(
                "https://i.pinimg.com/736x/db/21/17/db2117b65075d190e2b128d8ea1a5bd9.jpg",//imageDoctor!,
                width: 110.w,
                height: 110.h,
              ),
            ),
            SizedBox(width: 16.w,),
            Container(
              margin: EdgeInsets.only(top:25.5.h,bottom: 25.5.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name!,style: TextThemes.font16BlackBold.copyWith(overflow: TextOverflow.ellipsis),maxLines: 2,),
                  SizedBox(height: 8.h,),
                  Row(
                    children: [
                      Text(specialize!,style: TextThemes.font12GreyMedium,),
                      SizedBox(width: 5.w,),
                      Text("|",style: TextThemes.font12GreyMedium,),
                      SizedBox(width: 5.w,),
                      Text(degree!,style: TextThemes.font12GreyMedium,),
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.amber,size: 15.h,),
                      SizedBox(width: 5.w,),
                      Text("4.8",style: TextThemes.font12GreyMedium,),
                      SizedBox(width: 5.w,),
                      Text("(4,279 reviews)",style: TextThemes.font12GreyMedium,),






                    ]
                  )



                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
