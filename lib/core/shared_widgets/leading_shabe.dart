import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/home_page/logic/cubit/cubit_gethomedoctors/cubit.dart';
import '../../features/home_page/presentation/home_pagee.dart';
import '../di/debendency_injection.dart';

class LeadingShapeAppBar extends StatelessWidget {
  LeadingShapeAppBar({super.key, required this.action});

  void Function()? action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        height: 40.h,
        width: 40.h,
        margin: EdgeInsets.only(left: 10.r),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: 18.sp,
          ),
        ),
      ),
    );
  }
}
