import 'package:docway/features/home_page/presentation/widgets/find_card.dart';
import 'package:docway/features/home_page/presentation/widgets/speciality_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/debendency_injection.dart';
import '../../../core/local_shared/cache_helper.dart';
import '../../../core/theme/text_themes/text.dart';
import '../../home/logic/cubit/doctor_cubit.dart';
import '../../home/presentation/home.dart';
import '../../home/presentation/widgets/card.dart';
import '../../login_screen/logic/cubit/login_cubit.dart';
import '../../login_screen/presentation/login.dart';
import '../logic/cubit/cubit.dart';
import '../logic/cubit/states.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi , Omar", style: TextThemes.font18BlackBold),
              SizedBox(height: 5.h),
              Text("How Are you Today?", style: TextThemes.font11GreyRegular),
            ],
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(backgroundColor: Colors.grey.shade200, radius: 35.r),

              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 27.r,
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            FindCard(),
            SizedBox(height: 16.h),
            Row(
              children: [
                Text(
                  "Doctor Speciality",
                  style: TextThemes.font18BlackSemiBold,
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text("see All", style: TextThemes.font12BlueRegular),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            SpecialityPart(),
            SizedBox(height: 16.h),
            Row(
              children: [
                Text(
                  "Recommendation Doctor",
                  style: TextThemes.font18BlackSemiBold,
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => BlocProvider(
                              create:
                                  (BuildContext context) =>
                                      getIt<DoctorCubit>()..getAllDocs(),
                              child: AllDoctors(),
                            ),
                      ),
                    );
                  },
                  child: Text("see All", style: TextThemes.font12BlueRegular),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            BlocConsumer<DoctorHomeCubit, DoctorHomeStates>(
              builder: (BuildContext context, DoctorHomeStates<dynamic> state) {
                var cubit = context.read<DoctorHomeCubit>();
                if (state is Loading2) {
                  return Expanded(
                    child: const Center(child: CircularProgressIndicator()),
                  );
                }
                if (state is Error2) {
                  print(state.message);
                  if (state.message.contains("Unauthorized")) {
                    CacheHelper.removeString(key: 'token');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => BlocProvider(
                              create:
                                  (BuildContext context) => getIt<LoginCubit>(),
                              child: LoginScreen(),
                            ),
                      ),
                    );
                  }
                }
                return Expanded(
                  child: ListView.separated(
                    itemBuilder:
                        (context, index) => CardDetails(
                          imageDoctor: cubit.allDoctors[index].photo,
                          name: cubit.allDoctors[index].name,
                          specialize:
                              cubit.allDoctors[index].specialization!.name!,
                          degree: cubit.allDoctors[index].degree,
                        ),
                    itemCount: 10,
                    shrinkWrap: true,
                    separatorBuilder:
                        (BuildContext context, int index) =>
                            SizedBox(height: 10.h),
                  ),
                );
              },
              listener:
                  (BuildContext context, DoctorHomeStates<dynamic> state) {},
            ),
          ],
        ),
      ),
    );
  }
}
