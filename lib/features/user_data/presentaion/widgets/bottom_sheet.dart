import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/text_themes/text.dart';

void showBottomSheet1(BuildContext context) {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  Color color=Colors.grey[300]!;
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Container(
        margin: EdgeInsets.all(15.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        ),
        height: 270.h,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
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
                    border: OutlineInputBorder(),
                  ),
                  validator:
                      (value) =>
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
                    border: OutlineInputBorder(),
                  ),
                  validator:
                      (value) =>
                          value == null || !value.contains('@')
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
                    border: OutlineInputBorder(),
                  ),
                  validator:
                      (value) =>
                          value == null || value.length < 10
                              ? 'Enter valid phone'
                              : null,
                ),
                SizedBox(height: 20.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20),
                  child: MaterialButton(
                    height: 52.h,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    onPressed: () {},
                    color: Colors.blue,
                    child: Text(
                      "Submit",
                      style: TextThemes.font16WhiteSemiBold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
