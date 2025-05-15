import 'package:dio/dio.dart';
import 'package:docway/features/home_page/logic/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const/const.dart';
import '../../../../core/local_shared/cache_helper.dart';
import '../../../home/data/models/doctor_response_model.dart';
import '../../../home/data/rebo/doctor_rebo.dart';


class DoctorHomeCubit extends Cubit<DoctorHomeStates> {
  DoctorRebo doctorRebo;

  DoctorHomeCubit(this.doctorRebo) : super(DoctorHomeStates.initial());

  bool isLoading = false;
  List<Data2> allDoctors = [];
  TextEditingController name=TextEditingController();

  Future<void> getAllDocs() async {
    emit(DoctorHomeStates.loading());
    final result = await doctorRebo.getAllDoctors();
    result.when(
      success: (doctorsResponseModel) {
        try{
          print(doctorsResponseModel.data!);
          allDoctors = doctorsResponseModel.data!;
          print(allDoctors.length);
          emit(DoctorHomeStates.success(doctorsResponseModel));
        } on DioException catch (e) {
          print(e.response);

        }
      },
      error: (error) {
        emit(DoctorHomeStates.error(message: error.apiErrorModel.message!));
      },
    );
  }
}
