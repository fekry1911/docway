import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/generated/locale_keys.g.dart';
import '../../../../core/regexs/regexs.dart';
import '../../../../core/shared_widgets/shared_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatelessWidget {
   const EmailAndPassword({super.key,required this.onTap,required this.isSecure});
   final VoidCallback onTap;
   final bool isSecure;


   @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          SharedTextFormField(
            prefixIcon: Icon(Icons.email,color: Colors.blue,),
            controller: context.read<LoginCubit>().emailController,
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
            suffixIcon: IconButton(onPressed: onTap, icon:!isSecure?Icon(Icons.visibility,color: Colors.blue,):Icon(Icons.visibility_off,color: Colors.blue,),),
            prefixIcon: Icon(Icons.password,color: Colors.blue,),
            controller: context.read<LoginCubit>().passwordController,
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
        ],
      ),
    );
  }
}
