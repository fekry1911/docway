import 'package:docway/core/generated/locale_keys.g.dart';
import 'package:docway/core/theme/colors/colors.dart';
import 'package:docway/features/login_screen/presentation/widgets/already_have_text.dart';
import 'package:docway/features/login_screen/presentation/widgets/term_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/shared_widgets/shared_button.dart';
import '../../../core/shared_widgets/shared_text_form_field.dart';
import '../../../core/theme/text_themes/text.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
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
            Form(
              key:_formKey,
              child: Column(
                children: [
                  SharedTextFormField(
                    hintText: LocaleKeys.auth_email.tr(),
                    validator: (String) {},
                  ),
                  SizedBox(height: 16.h),
                  SharedTextFormField(
                    hintText: LocaleKeys.auth_password.tr(),
                    validator: (String) {},
                    isObscureText: true,
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {  },
                        fillColor: MaterialStateProperty.all(Colors.white),
                        side: BorderSide(color: AppColors.strongGrey),
                      ),
                      Text(LocaleKeys.auth_forgot_password.tr(),style: TextThemes.font12GreyRegular,),
                      Spacer(),
                      TextButton(onPressed: (){}, child: Text(LocaleKeys.auth_forgot_password.tr(),style: TextThemes.font12BlueRegular,)),

                    ],
                  ),
                  SizedBox(height: 32.h),
                  BlueButtonWithRaduis(text: LocaleKeys.auth_login.tr(), onTab: () {  },),
                  SizedBox(height: 32.h),
                  TermAndConditions(),
                  SizedBox(height: 32.h),
                  AlreadyHaveAccount()

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
