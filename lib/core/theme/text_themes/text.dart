import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/colors.dart';
import 'font_weight.dart';

class TextThemes{

  static TextStyle textStyle30Bold=TextStyle(
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
    fontSize: 35.sp,
  );

  static TextStyle textBlueBold32=TextStyle(
    color: AppColors.mainBlueColor,
    fontWeight: FontWeightHelper.thick,
    fontSize: 32.sp,
    height: 1.5
  );

  static TextStyle textGreyRegular12=TextStyle(
      color: AppColors.greyColor,
      fontWeight: FontWeightHelper.regular,
      fontSize: 12.sp,
  );
  static TextStyle textWhiteSemi16=TextStyle(
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.medium,
    fontSize: 16.sp,
  );
  static TextStyle textBold24Blue=TextStyle(
    color: AppColors.mainBlueColor,
    fontWeight: FontWeightHelper.bold,
    fontSize: 24.sp,
  );
  static TextStyle textGreyRegular14=TextStyle(
    color: AppColors.greyColor,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
  );
  static TextStyle font14LightGrayRegular=TextStyle(
    color: AppColors.greyColor,
    fontWeight: FontWeightHelper.bold,
    fontSize: 14.sp,
  );
  static TextStyle font14DarkBlueMedium=TextStyle(
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 14.sp,
  );
  static TextStyle font12GreyRegular=TextStyle(
    color: AppColors.strongGrey,
    fontWeight: FontWeightHelper.medium,
    fontSize: 12.sp,
  );
  static TextStyle font12BlueRegular=TextStyle(
    color: AppColors.mainBlueColor,
    fontWeight: FontWeightHelper.medium,
    fontSize: 12.sp,
  );
  static TextStyle font13LightBlackRegular=TextStyle(
    color: AppColors.lightBlack,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
  );
  static TextStyle font13BlueRegular=TextStyle(
    color: AppColors.mainBlueColor,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
  );
  static TextStyle font13GreyRegular=TextStyle(
    color: AppColors.greyColor,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
  );
}