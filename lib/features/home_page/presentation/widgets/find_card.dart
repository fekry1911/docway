import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/local_shared/cache_helper.dart';
import '../../../../core/theme/text_themes/text.dart';

class FindCard extends StatelessWidget {
  const FindCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Card
        SizedBox(
          height: 167.h,
          width: 343.w,
          child: Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text and Button
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Book and\nschedule with\nnearest doctor",
                          style: TextThemes.font22BlackMedium.copyWith(
                            height: 1.4,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 15.h),
                        SizedBox(
                          height: 38.h,
                          width: 109.w,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.r),
                              side: BorderSide(color: Colors.white), // border
                            ),
                            onPressed: () {
                              print(CacheHelper.getString(key: 'token'));
                            },
                            color: Colors.white,
                            child: Text(
                              "Find Nearby",
                              style: TextThemes.font12BlueRegular,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 120.w),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          top: -15.h,
          bottom: 3.h,
          right: 15.w,
          child: Image.asset(
            "assets/icons/doctorPhoto.png",
            height: 167.h,
            width: 136.w,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
