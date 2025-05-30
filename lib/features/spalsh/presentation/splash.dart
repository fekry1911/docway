
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/di/debendency_injection.dart';
import '../../../core/local_shared/cache_helper.dart';
import '../../../core/shared/cubit/cubit_specialization/sprcialization_cubit.dart';
import '../../../core/theme/text_themes/text.dart';
import '../../home_page/logic/cubit/cubit_gethomedoctors/cubit.dart';
import '../../home_page/presentation/home_pagee.dart';
import '../../on_boarding/presentation/on_boarding.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});

  @override
  State<SpashScreen> createState() => _SpashScreenState();


}

class _SpashScreenState extends State<SpashScreen> {
  @override
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
                  child: AnimatedTextKit(
                    totalRepeatCount: 1,
                    onFinished: (){
                      if(CacheHelper.getBoolean(key: "on_boarding")!=null&&CacheHelper.getString(key: "token")!=null){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => MultiBlocProvider(providers: [
                                  BlocProvider(create: (context)=>getIt<DoctorHomeCubit>()..getAllDocs()),
                                  BlocProvider(create: (context)=>getIt<SpecializationCubit>()..getSpecialization()),

                                ], child: HomePage())
                          ),
                        );
                    }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoarding()));

                      }
                    },
                    animatedTexts: [
                    TypewriterAnimatedText(
                      speed: Duration(milliseconds: 300),
                      "DocWay", textStyle: TextThemes.textStyle30Bold,)
                  ],))
            ],
          )
        ],
      ),
    );
  }
}
