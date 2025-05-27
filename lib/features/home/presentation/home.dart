import 'package:docway/features/home/presentation/widgets/search_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/debendency_injection.dart';
import '../../../core/shared/cubit/cubit_specialization/sprcialization_cubit.dart';
import '../../../core/shared_widgets/card.dart';
import '../../../core/theme/text_themes/text.dart';
import '../../home_page/logic/cubit/cubit_gethomedoctors/cubit.dart';
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
        backgroundColor: Colors.white,
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
                var cubit=context.read<DoctorCubit>();
                if (state is Loading) {
                  return Expanded(
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => CardDetails(id: cubit.allDoctors[index].id,imageDoctor: cubit.allDoctors[index].photo, name: cubit.allDoctors[index].name, specialize: cubit.allDoctors[index].specialization!.name!, degree: cubit.allDoctors[index].degree,),
                    itemCount: cubit.allDoctors.length,
                    shrinkWrap: true, separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 10.h,),
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
