import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const/images/specialization_data.dart';
import '../../../../core/di/debendency_injection.dart';
import '../../../../core/shared/cubit/cubit_specialization/sprcialization_cubit.dart';
import '../../../../core/shared/cubit/cubit_specialization_details/specialization_details_cubit.dart';
import '../../../../core/shared_widgets/custom_shape.dart';
import '../../../specialization_doctors/presentation/specialization_doctor_ui.dart';

class SpecialityPart extends StatelessWidget {
  const SpecialityPart({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=context.read<SpecializationCubit>();
    return Row(
      children: [
        GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => BlocProvider(
                    create:
                        (BuildContext context) =>
                    getIt<SpecializationDetailsCubit>()..getSpecializationDetails(1),
                    child: SpecializationDoctorUi(),
                  ),
                ),
              );

            },
            child: CustomShape(image: specializationImages[0],text:cubit.specializationData[0].name)),
        Spacer(),
        GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => BlocProvider(
                    create:
                        (BuildContext context) =>
                    getIt<SpecializationDetailsCubit>()..getSpecializationDetails(2),
                    child: SpecializationDoctorUi(),
                  ),
                ),
              );

            },
            child: CustomShape(image: specializationImages[1],text:cubit.specializationData[1].name)),
        Spacer(),
        GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => BlocProvider(
                    create:
                        (BuildContext context) =>
                    getIt<SpecializationDetailsCubit>()..getSpecializationDetails(3),
                    child: SpecializationDoctorUi(),
                  ),
                ),
              );

            },

            child: CustomShape(image: specializationImages[2],text:cubit.specializationData[2].name)),
        Spacer(),
        GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => BlocProvider(
                    create:
                        (BuildContext context) =>
                    getIt<SpecializationDetailsCubit>()..getSpecializationDetails(4),
                    child: SpecializationDoctorUi(),
                  ),
                ),
              );

            },

            child: CustomShape(image: specializationImages[3],text:cubit.specializationData[3].name)),
      ],
    );
  }
}
