import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/debendency_injection.dart';
import '../../../../core/generated/locale_keys.g.dart';
import '../../../../core/theme/text_themes/text.dart';
import '../../../login_screen/logic/cubit/login_cubit.dart';
import '../../../login_screen/presentation/login.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: RichText(text:TextSpan(children: [
        TextSpan(text: LocaleKeys.auth_not_have_account.tr(),style: TextThemes.font13LightBlackRegular),
        TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BlocProvider(create: (BuildContext context) =>getIt<LoginCubit>(),
                  child: LoginScreen())));
            },
            text: "  Log in",style: TextThemes.font13BlueRegular)
      ]),),
    );
  }
}
