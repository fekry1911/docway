import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/generated/locale_keys.g.dart';
import '../../../../core/regexs/regexs.dart';
import '../../../../core/shared_widgets/shared_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          SharedTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: LocaleKeys.auth_email.tr(),
            validator: (value) {
              if (value!.isEmpty && !isValidEmail(value)) {
                return "Please Enter Valid Email";
              }
            },
          ),
          SizedBox(height: 16.h),
          SharedTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: LocaleKeys.auth_password.tr(),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Valid Email";
              }
            },
            isObscureText: true,
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
