import 'package:docway/core/theme/text_themes/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/cubit/get_user_cubit.dart';

class NameAndEmail extends StatelessWidget {
  const NameAndEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(context.read<UserCubit>().data!.data[0].name,style: TextThemes.font22BlackMedium.copyWith(color: Colors.black),),
        SizedBox(height: 10.h,),
        Text(context.read<UserCubit>().data!.data[0].email,style: TextThemes.font14LightDarkRegular,),

      ],
    );
  }
}
