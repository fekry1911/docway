
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/const/images/specialization_data.dart';
import '../../../core/di/debendency_injection.dart';
import '../../../core/shared/cubit/cubit_specialization/specializaton_states.dart' as specialization;
import '../../../core/shared/cubit/cubit_specialization/sprcialization_cubit.dart';
import '../../../core/shared/cubit/cubit_specialization_details/specialization_details_cubit.dart';
import '../../../core/shared_widgets/custom_shape.dart';
import '../../../core/theme/text_themes/text.dart';
import '../../specialization_doctors/presentation/specialization_doctor_ui.dart';

class AllSpecialization extends StatelessWidget {
  const AllSpecialization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Doctor Speciality",
            style: TextThemes.font18BlackSemiBold,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40.r),
        child: BlocConsumer<SpecializationCubit,specialization.SpecializationStates>(
          builder: (context, state) {
            var cubit = context.read<SpecializationCubit>();
            if(state is specialization.Loading){
              return Center(child: CircularProgressIndicator());
            }
            if(state is specialization.Error){
              return Center(child: Text(state.message));
            }
            return GridView.builder(
              itemCount:
                  context.read<SpecializationCubit>().specializationData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // عدد الأعمدة
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1, // عرض/ارتفاع العنصر
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => BlocProvider(
                          create:
                              (BuildContext context) =>
                          getIt<SpecializationDetailsCubit>()..getSpecializationDetails(cubit.specializationData[index].id!),
                          child: SpecializationDoctorUi(),
                        ),
                      ),
                    );

                  },
                  child: Center(
                    child: CustomShape(
                      image: specializationImages[index],
                      text:
                          context
                              .read<SpecializationCubit>()
                              .specializationData[index]
                              .name,
                    ),
                  ),
                );
              },
            );
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}
