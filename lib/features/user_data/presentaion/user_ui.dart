import 'package:docway/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:docway/features/login_screen/presentation/login.dart';
import 'package:docway/features/user_data/logic/cubit/get_user_cubit.dart';
import 'package:docway/features/user_data/logic/cubit/get_user_states.dart'
    as userStates;
import 'package:docway/features/user_data/presentaion/widgets/bottom_sheet.dart';
import 'package:docway/features/user_data/presentaion/widgets/list_title_data.dart';
import 'package:docway/features/user_data/presentaion/widgets/name_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/debendency_injection.dart';
import '../../../core/theme/colors/colors.dart';
import '../../../core/theme/text_themes/text.dart';
import '../../doctor_details/presentation/widgets/bottom_sheet.dart';
import '../../show_appointment/logic/cubit/appointment_cubit.dart';
import '../../show_appointment/presentation/show_all_appointment.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Profile",
            style: TextThemes.font18BlackSemiBold.copyWith(color: Colors.white),
          ),
          centerTitle: true,
        ),
      ),
      body: BlocConsumer<UserCubit, userStates.UserStates>(
        builder: (BuildContext context, state) {
          var cubit=context.read<UserCubit>();
          if (state is userStates.Loading) {
            return Container(
              color: Colors.white,
              child: const Center(child: CircularProgressIndicator()),
            );
          } else if (state is userStates.Error) {
            return Container(
              color: Colors.white,
              child: Center(child: Text(state.message)),
            );
          }
          return Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.r),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                top: 0,
                child: ClipOval(
                  child: Image.asset(
                    "assets/Image.png",
                    fit: BoxFit.cover,
                    height: 130.h,
                    width: 130.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 160.h), // لتحت الصورة بمسافة
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NameAndEmail(),
                    SizedBox(height: 20.h),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 20,
                      ),
                      child: MaterialButton(
                        height: 52.h,
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        elevation: 0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => BlocProvider(
                                create:
                                    (BuildContext context) =>
                                getIt<AppointmentResponseApiCubit>()..getAppointmentResponse(),
                                child: ShowwAllAppointment(),
                              ),
                            ),
                          );
                        },
                        color: Color(0xffF8F8F8),
                        child: Text(
                          "My Appointment",
                          style: TextThemes.font16WhiteSemiBold.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    IconAndInfo(
                      image: 'assets/personalcard.png',
                      data: 'Update My Personal Data',
                      onPreesed: () {
                        showBottomSheet1(context);
                      },
                      backColor: Color(0xffEAF2FF),
                    ),
                    Divider(height: 25.h, endIndent: 50.w, indent: 30.w),
                    IconAndInfo(
                      image: 'assets/logout.png',
                      data: 'Log Out',
                      onPreesed: () {
                        cubit.LogOut();
                      },
                      backColor: Color(0xffFFEEEF),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        listener: (BuildContext context, Object? state) {
          if (state is userStates.Loading1) {
           showDialog(
              context: context,
              builder:
                  (context) => Center(
                child: CircularProgressIndicator(
                  color: AppColors.mainBlueColor,
                ),
              ),
            );
          }
          if (state is userStates.Success1) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BlocProvider(create: (BuildContext context) => getIt<LoginCubit>(),child: LoginScreen(),)));
          }
        },
      ),
    );
  }
}
