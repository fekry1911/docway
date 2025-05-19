import 'package:docway/core/shared/cubit/cubit_specialization/specializaton_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/all_specialization/specialization_model.dart';
import '../../../rebos/specialization_rebo.dart';

class SpecializationCubit extends Cubit<SpecializationStates>{
  Specialization_rebo specialization_rebo;
  SpecializationCubit(this.specialization_rebo):super(SpecializationStates.initial());
  List<SpecializationData> specializationData=[];

  Future<void> getSpecialization()async{
    emit(SpecializationStates.loading());
    final result=await specialization_rebo.getSpecialization();
    result.when(success: (specializationResponseModel){
      specializationData=specializationResponseModel.data!;
      emit(SpecializationStates.success(specializationResponseModel));
    }, error: (error){
      print(error.apiErrorModel.message);
      emit(SpecializationStates.error(message: error.apiErrorModel.message!));
    });
  }

}