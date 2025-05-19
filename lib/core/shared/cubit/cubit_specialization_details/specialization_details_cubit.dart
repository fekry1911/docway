import 'package:docway/core/shared/cubit/cubit_specialization_details/specialization_details_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/id_specialization/specialization_by_id.dart';
import '../../../rebos/specialization_details_rebo/specialization_details_rebo.dart';

class SpecializationDetailsCubit extends Cubit<SpecializationDetailsStates>{
  SpecializationRetailsRebo specializationRetailsRebo;
  SpecializationDetailsCubit(this.specializationRetailsRebo):super(SpecializationDetailsStates.initial());
  List<DoctorModel> specializationDetailsData = [];
  SpecializationIdData? specializationDetailsResponse;

  Future<void> getSpecializationDetails(int id)async{
    emit(SpecializationDetailsStates.loading());
    final result = await specializationRetailsRebo.getSpecializationDetails(id);
    result.when(success: (success){

      specializationDetailsResponse = success.data;
      specializationDetailsData = success.data.doctors;
      emit(SpecializationDetailsStates.success());
    }, error: (error){
      emit(SpecializationDetailsStates.error(message: error.apiErrorModel.message!));
    });
  }


}