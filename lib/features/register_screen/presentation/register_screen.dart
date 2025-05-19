
import 'package:docway/features/register_screen/presentation/widgets/already_have_text.dart';
import 'package:docway/features/register_screen/presentation/widgets/email_password.dart';
import 'package:docway/features/register_screen/presentation/widgets/errr_setup.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/debendency_injection.dart';
import '../../../core/generated/locale_keys.g.dart';
import '../../../core/shared_widgets/shared_button.dart';
import '../../../core/theme/colors/colors.dart';
import '../../../core/theme/text_themes/text.dart';
import '../../login_screen/logic/cubit/login_cubit.dart';
import '../../login_screen/presentation/login.dart';
import '../../login_screen/presentation/widgets/already_have_text.dart';
import '../../login_screen/presentation/widgets/email_password.dart';
import '../../login_screen/presentation/widgets/term_text.dart';
import '../cubit/register_cubit.dart';
import '../cubit/register_state.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

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
              EmailAndPassword1(),
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
                      .read<RegisterCubit>()
                      .formKey
                      .currentState!
                      .validate()) {
                    context.read<RegisterCubit>().register();
                    print("done");
                  }
                },
              ),
              SizedBox(height: 32.h),
              TermAndConditions(),
              SizedBox(height: 32.h),
              AlreadyHaveAccount(),
              BlocListener<RegisterCubit, RegisterStates>(
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
                      setupState(
                        context,
                        error: "Login succ",
                        icon: Icons.done,
                        color: Colors.green,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => BlocProvider(
                                    create:
                                        (BuildContext context) =>
                                            getIt<LoginCubit>(),
                                    child: LoginScreen(),
                                  ),
                            ),
                          );

                        },
                      );
                    },
                    error: (String message) {
                      setupState(
                        context,
                        error: message,
                        icon: Icons.error,
                        color: Colors.red,
                        onpressed: () {
                          Navigator.pop(context);
                        },
                      );
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
