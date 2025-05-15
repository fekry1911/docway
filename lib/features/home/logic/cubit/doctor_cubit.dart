import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const/const.dart';
import '../../../../core/local_shared/cache_helper.dart';
import '../../../login_screen/data/models/login_response_model.dart';
import '../../data/models/doctor_response_model.dart';
import '../../data/rebo/doctor_rebo.dart';
import 'doctor_states.dart';


class DoctorCubit extends Cubit<DoctorStates> {
  DoctorRebo doctorRebo;

  DoctorCubit(this.doctorRebo) : super(DoctorStates.initial());

  bool isLoading = false;
  List<Data2> allDoctors = [];
  TextEditingController name=TextEditingController();

  Future<void> getAllDocs() async {
    emit(DoctorStates.loading());
    final result = await doctorRebo.getAllDoctors();
    result.when(
      success: (doctorsResponseModel) {
        print(doctorsResponseModel.data!);
        allDoctors = doctorsResponseModel.data!;
        print(allDoctors.length);
        emit(DoctorStates.success(doctorsResponseModel));
      },
      error: (error) {
        print("asdfglkhr4yyyy2389/////////!!!!!!!!!!!!!!@@@@@@@@@@@@@@#############");

        emit(DoctorStates.error(message: error.apiErrorModel.message!));
      },
    );
  }

  Future<void> searchAboutDocs(value) async {
    print("=====> Before calling repo");
    emit(DoctorStates.loading());
    allDoctors = [];
    final result = await doctorRebo.searchAboutDoctor(value);
    result.when(
      success: (doctorsResponseModel) {
        print("=====> inside success");
        print("asdfglkhr4yyyy2389/////////!!!!!!!!!!!!!!@@@@@@@@@@@@@@#############");
        print(doctorsResponseModel.code);
        allDoctors = doctorsResponseModel.data!;

        print(allDoctors.length);
        emit(DoctorStates.success(doctorsResponseModel));
      },
      error: (error) {
        print("=====> inside error: ${error.apiErrorModel.message}");

        print("${error.apiErrorModel.message}");
        print("${error.apiErrorModel.code}");
        emit(DoctorStates.error(message: error.apiErrorModel.message!));
      },
    );
  }

}
