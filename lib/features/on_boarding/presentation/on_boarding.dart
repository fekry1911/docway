
import 'package:docway/features/on_boarding/presentation/widgets/background_text.dart';
import 'package:docway/features/on_boarding/presentation/widgets/logo_and_name.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/debendency_injection.dart';
import '../../../core/generated/locale_keys.g.dart';
import '../../../core/local_shared/cache_helper.dart';
import '../../../core/shared_widgets/shared_button.dart';
import '../../../core/theme/colors/colors.dart';
import '../../../core/theme/text_themes/text.dart';
import '../../login_screen/logic/cubit/login_cubit.dart';
import '../../login_screen/presentation/login.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            LogoAndName(),
            SizedBox(height: 10.h),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                BackGroundImageAndText(),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.white, Colors.white.withOpacity(0.0)],
                        stops: [0.0, 0.5],
                      ),
                    ),
                  ),
                ),
                Text(
                  "on_boarding.title".tr(),
                  style: TextThemes.textBlueBold32,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 13.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "on_boarding.info".tr(),
                    style: TextThemes.textGreyRegular12,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h),
                  BlueButtonWithRaduis(
                    text: LocaleKeys.on_boarding_button_text,
                    onTab: () {
                      CacheHelper.putBoolean(key: "on_boarding", value: true);

                      final loginCubit = getIt<LoginCubit>(); // انشئه مرة واحدة

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider.value( // استخدم value بدل create
                            value: loginCubit,
                            child: LoginScreen(),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
