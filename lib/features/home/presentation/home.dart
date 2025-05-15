import 'package:docway/features/home/presentation/widgets/card.dart';
import 'package:docway/features/home/presentation/widgets/search_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/debendency_injection.dart';
import '../../../core/theme/text_themes/text.dart';
import '../../home_page/logic/cubit/cubit.dart';
import '../../home_page/presentation/home_pagee.dart';
import '../logic/cubit/doctor_cubit.dart';
import '../logic/cubit/doctor_states.dart';

class AllDoctors extends StatelessWidget {
  const AllDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<DoctorCubit>().getAllDocs();
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50.h,
        backgroundColor: Colors.white,
        leading: Container(
          height: 30.h,
          width: 30.h,
          margin: EdgeInsets.only(left: 10.r),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => BlocProvider(
                          create:
                              (BuildContext context) =>
                                  getIt<DoctorHomeCubit>()..getAllDocs(),
                          child: HomePage(),
                        ),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
            ),
          ),
        ),
        title: Text("Search", style: TextThemes.font18BlackSemiBold),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchAndFilter(),
            SizedBox(height: 24.h),
            BlocBuilder<DoctorCubit, DoctorStates>(
              builder: (BuildContext context, state) {
                return Text(
                  "${context.read<DoctorCubit>().allDoctors.length} Doctor",
                  style: TextThemes.font18BlackSemiBold,
                );
              },
            ),
            SizedBox(height: 24.h),
            BlocConsumer<DoctorCubit, DoctorStates>(
              builder: (BuildContext context, DoctorStates<dynamic> state) {
                var cubit = context.read<DoctorCubit>();
                if (state is Loading) {
                  return Expanded(
                    child: const Center(child: CircularProgressIndicator()),
                  );
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
                    itemCount: cubit.allDoctors.length,
                    shrinkWrap: true,
                    separatorBuilder:
                        (BuildContext context, int index) =>
                            SizedBox(height: 10.h),
                  ),
                );
              },
              listener: (BuildContext context, DoctorStates<dynamic> state) {},
            ),
          ],
        ),
      ),
    );
  }
}
