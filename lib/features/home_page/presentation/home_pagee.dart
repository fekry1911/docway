import 'package:docway/features/home_page/presentation/widgets/find_card.dart';
import 'package:docway/features/home_page/presentation/widgets/speciality_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/di/debendency_injection.dart';
import '../../../core/local_shared/cache_helper.dart';
import '../../../core/shared/cubit/cubit_specialization/specializaton_states.dart' as specialization;
import '../../../core/shared/cubit/cubit_specialization/sprcialization_cubit.dart';
import '../../../core/theme/text_themes/text.dart';
import '../../all_speciali/prsentation/all_specialization.dart';
import '../../home/logic/cubit/doctor_cubit.dart';
import '../../home/presentation/home.dart';
import '../../../core/shared_widgets/card.dart';
import '../../login_screen/logic/cubit/login_cubit.dart';
import '../../login_screen/presentation/login.dart';
import '../logic/cubit/cubit_gethomedoctors/cubit.dart';
import '../logic/cubit/cubit_gethomedoctors/states.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi , ${CacheHelper.getString(key: "name")}", style: TextThemes.font18BlackBold),
                SizedBox(height: 5.h),
                Text("How Are you Today?", style: TextThemes.font11GreyRegular),
              ],
            ),
          ),
          actions: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  radius: 35.r,
                ),

                IconButton(
                  onPressed: () {
                    context.read<DoctorHomeCubit>().LogOut(context);
                  },
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => BlocProvider(
                            create:
                                (BuildContext context) =>
                            getIt<SpecializationCubit>()..getSpecialization(),
                            child: AllSpecialization(),
                          ),
                        ),
                      );

                    },
                    child: Text("see All", style: TextThemes.font12BlueRegular),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              BlocConsumer<SpecializationCubit,specialization.SpecializationStates>(
                builder: (context, state) {

                   if(state is specialization.Loading){
                    return Center(child: CircularProgressIndicator());
                  }
                  else{
                    Center(child: Text("you have to Login Again"));
                  }
                   return SpecialityPart();

                },
                listener: (context, state) {},
              ),

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
                builder: (
                  BuildContext context,
                  DoctorHomeStates<dynamic> state,
                ) {
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
                                    (BuildContext context) =>
                                        getIt<LoginCubit>(),
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
              BlocListener<DoctorHomeCubit, DoctorHomeStates>(
                child: SizedBox(),
                listener: (context, state) {
                  if (state is Loading1) {
                    showDialog(
                      context: context,
                      builder:
                          (context) =>
                              Center(child: CircularProgressIndicator()),
                    );
                  }
                  if (state is Success1) {
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
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
