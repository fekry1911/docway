import 'package:docway/features/login_screen/presentation/widgets/already_have_text.dart';
import 'package:docway/features/login_screen/presentation/widgets/email_password.dart';
import 'package:docway/features/login_screen/presentation/widgets/errr_setup.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/debendency_injection.dart';
import '../../../core/generated/locale_keys.g.dart';
import '../../../core/shared/cubit/cubit_specialization/sprcialization_cubit.dart';
import '../../../core/shared_widgets/shared_button.dart';
import '../../../core/theme/colors/colors.dart';
import '../../../core/theme/text_themes/text.dart';
import '../../home_page/logic/cubit/cubit_gethomedoctors/cubit.dart';
import '../../home_page/presentation/home_pagee.dart';
import '../../register_screen/presentation/widgets/term_text.dart';
import '../logic/cubit/login_cubit.dart';
import '../logic/cubit/login_states.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.auth_Welcome.tr(),
                style: TextThemes.textBold24Blue,
              ),
              SizedBox(height: 8.h),
              Text(
                LocaleKeys.auth_summry.tr(),
                style: TextThemes.textGreyRegular14,
              ),
              SizedBox(height: 36.h),
              EmailAndPassword(),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                    fillColor: MaterialStateProperty.all(Colors.white),
                    side: BorderSide(color: AppColors.strongGrey),
                  ),
                  Text(
                    LocaleKeys.auth_forgot_password.tr(),
                    style: TextThemes.font12GreyRegular,
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      LocaleKeys.auth_forgot_password.tr(),
                      style: TextThemes.font12BlueRegular,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              BlueButtonWithRaduis(
                text: LocaleKeys.auth_login.tr(),
                onTab: () {
                  if (context
                      .read<LoginCubit>()
                      .formKey
                      .currentState!
                      .validate()) {
                    context.read<LoginCubit>().login();

                    print("done");
                  }
                },
              ),
              SizedBox(height: 32.h),
              TermAndConditions(),
              SizedBox(height: 32.h),
              AlreadyHaveAccount1(),
              BlocListener<LoginCubit, LoginStates>(
                child: const SizedBox.shrink(),
                listener: (context, state) {
                  state.when(
                    loading: () {
                      showDialog(
                        context: context,
                        builder:
                            (context) => Center(
                              child: CircularProgressIndicator(
                                color: AppColors.mainBlueColor,
                              ),
                            ),
                      );
                    },
                    success: (loginResponseMode) {
                      print(loginResponseMode.userData.token);
                      Navigator.pop(context);
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
                    },
                    error: (String message) {
                      setupErrorState(context, message);
                    },
                    initial: () {},
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
