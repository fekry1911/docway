import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/text_themes/text.dart';
import '../../on_boarding/presentation/on_boarding.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});

  @override
  State<SpashScreen> createState() => _SpashScreenState();


}

class _SpashScreenState extends State<SpashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoarding()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset("assets/icons/background.svg"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/logo.svg"),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Text("DocWay",style: TextThemes.TextStyle30Bold,))
            ],
          )
        ],
      ),
    );
  }
}
