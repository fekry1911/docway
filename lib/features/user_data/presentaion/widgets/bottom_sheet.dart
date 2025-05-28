import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/debendency_injection.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/theme/text_themes/text.dart';
import '../../data/models/user_request/user_request_update_model.dart';
import '../../logic/cubit/get_user_cubit.dart';
import '../../logic/update_user_cubit/update_user_cubit.dart';
import '../../logic/update_user_cubit/update_user_states.dart' as updateUser;
import '../user_ui.dart';

void showBottomSheet1(BuildContext context) {
  final cubit=context.read<UpdateUSerCubit>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  Color color = Colors.grey[50]!;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return BlocProvider.value(
        value: cubit,
        child: BlocListener<UpdateUSerCubit, updateUser.UpdateUserStates>(
          listener: (context, state) {
            if (state is updateUser.Loading) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            if (state is updateUser.Error) {
              Navigator.pop(context); // Close dialog
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Try Again later")),
              );
            }

            if (state is updateUser.Success) {
              Navigator.pop(context); // Close dialog
              Navigator.pop(context); // Close bottom sheet
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Updated Successfully")),
              );

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => MultiBlocProvider(
                    providers: [
                      BlocProvider(create: (_) => getIt<UserCubit>()..getAiiUserData()),
                      BlocProvider(create: (_) => getIt<UpdateUSerCubit>()),
                    ],
                    child: UserData(),
                  ),
                ),
              );
            }
          },
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 15.h,
              right: 15.h,
              top: 15.h,
            ),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Enter Your Info',
                      style: TextThemes.font18BlackSemiBold.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    TextFormField(
                      style: TextThemes.font14BlackSemiBold,
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: color,
                        labelText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      validator: (value) =>
                      value == null || value.isEmpty ? 'Enter name' : null,
                    ),
                    SizedBox(height: 16.h),
                    TextFormField(
                      style: TextThemes.font14BlackSemiBold,
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: color,
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      validator: (value) => value == null || !value.contains('@')
                          ? 'Enter valid email'
                          : null,
                    ),
                    SizedBox(height: 16.h),
                    TextFormField(
                      style: TextThemes.font14BlackSemiBold,
                      keyboardType: TextInputType.phone,
                      controller: phoneController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: color,
                        labelText: 'Phone',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      validator: (value) =>
                      value == null || value.length < 10
                          ? 'Enter valid phone'
                          : null,
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      child: MaterialButton(
                        height: 52.h,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            cubit.updateUser(
                              UserRequestModel(
                                name: nameController.text,
                                email: emailController.text,
                                phone: phoneController.text,
                                gender:0
                              ),
                            );
                          }
                        },
                        color: Colors.blue,
                        child: Text(
                          "Submit",
                          style: TextThemes.font16WhiteSemiBold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
