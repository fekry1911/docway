import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/shared/cubit/cubit_specialization_details/specialization_details_cubit.dart';
import '../../../core/shared/cubit/cubit_specialization_details/specialization_details_states.dart' as details;
import '../../../core/shared_widgets/card.dart';
import '../../../core/theme/text_themes/text.dart';

class SpecializationDoctorUi extends StatelessWidget {
  const SpecializationDoctorUi({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SpecializationDetailsCubit>();
    return BlocConsumer<SpecializationDetailsCubit,
        details.SpecializationDetailsStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is details.Loading) {
          return Container(
              color: Colors.white,
              child: Center(child: CircularProgressIndicator()));
        }
        if (state is details.Error) {
          return Container(
              color: Colors.white,
              child: Center(child: Text("you have to Login Again")));
        }
        return Scaffold(
          appBar: AppBar(
              title: Text(
                cubit.specializationDetailsResponse!.name,
                style: TextThemes.font18BlackSemiBold,
              )
          ),
          body: ListView.builder(
                itemCount: cubit.specializationDetailsData.length,
                itemBuilder: (context, index) {
                  return CardDetails(
                    imageDoctor: '',
                    name: cubit.specializationDetailsData[index].name,
                    specialize:
                    cubit.specializationDetailsData[index].specialization.name,
                    degree: cubit.specializationDetailsData[index].degree,
                    id: cubit.specializationDetailsData[index].id,
                  );
                },
              )
          );
      },
    );
  }
}
