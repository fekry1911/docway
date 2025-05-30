import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/generated/locale_keys.g.dart';
import '../../../../core/regexs/regexs.dart';
import '../../../../core/shared_widgets/shared_text_form_field.dart';
import '../../cubit/register_cubit.dart';

class EmailAndPassword1 extends StatelessWidget {
  const EmailAndPassword1({
    super.key,
    required this.onTap,
    required this.isSecure,
  });

  final VoidCallback onTap;
  final bool isSecure;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          SharedTextFormField(
            prefixIcon: Icon(Icons.email, color: Colors.blue),
            controller: context.read<RegisterCubit>().email,
            hintText: LocaleKeys.auth_email.tr(),
            validator: (value) {
              if (value!.isEmpty && !isValidEmail(value)) {
                return "Please Enter Valid Email";
              }
              return null;
            },
          ),

          SizedBox(height: 16.h),
          SharedTextFormField(
            suffixIcon: IconButton(
              onPressed: onTap,
              icon:
                  !isSecure
                      ? Icon(Icons.visibility, color: Colors.blue)
                      : Icon(Icons.visibility_off, color: Colors.blue),
            ),
            prefixIcon: Icon(Icons.password, color: Colors.blue),
            controller: context.read<RegisterCubit>().password,
            hintText: LocaleKeys.auth_password.tr(),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Valid Email";
              }
              return null;
            },
            isObscureText: isSecure,
          ),
          SizedBox(height: 16.h),
          SharedTextFormField(
            suffixIcon: IconButton(
              onPressed: onTap,
              icon:
                  !isSecure
                      ? Icon(Icons.visibility, color: Colors.blue)
                      : Icon(Icons.visibility_off, color: Colors.blue),
            ),
            prefixIcon: Icon(Icons.password, color: Colors.blue),
            controller: context.read<RegisterCubit>().confirmPassword,
            hintText: "confirmPassword",
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Enter Valid Email";
              }
              return null;
            },
            isObscureText: isSecure,
          ),
          SizedBox(height: 16.h),
          SharedTextFormField(
            maxLength: 11,
            prefixIcon: Icon(Icons.phone, color: Colors.blue),
            controller: context.read<RegisterCubit>().phone,
            hintText: "phone",
            validator: (value) {
              if (value!.isEmpty && !isValidEmail(value)) {
                return "Please Enter Valid phone";
              }
              return null;
            },
          ),
          SizedBox(height: 16.h),
          SharedTextFormField(
            maxLength: 22,
            prefixIcon: Icon(Icons.person, color: Colors.blue),
            controller: context.read<RegisterCubit>().name,
            hintText: "name",
            validator: (value) {
              if (value!.isEmpty && !isValidEmail(value)) {
                return "Please Enter Valid name";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
