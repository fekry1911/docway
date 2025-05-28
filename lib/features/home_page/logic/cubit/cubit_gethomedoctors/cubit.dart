import 'package:dio/dio.dart';
import 'package:docway/features/home_page/logic/cubit/cubit_gethomedoctors/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/const/const.dart';
import '../../../../../core/di/debendency_injection.dart';
import '../../../../../core/local_shared/cache_helper.dart';
import '../../../../../core/models/doctor/doctor_response_model.dart' show Data;
import '../../../../../core/rebos/doctor_rebo.dart';
import '../../../../login_screen/logic/cubit/login_cubit.dart';
import '../../../../login_screen/presentation/login.dart';
import '../../../../user_data/data/rebo/logout_rebo.dart';


class DoctorHomeCubit extends Cubit<DoctorHomeStates> {
  DoctorRebo doctorRebo;

  DoctorHomeCubit(this.doctorRebo) : super(DoctorHomeStates.initial());

  bool isLoading = false;
  List<Data> allDoctors = [];
  TextEditingController name=TextEditingController();

  Future<void> getAllDocs() async {
    print("TOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOKen");
    print(CacheHelper.getString(key: 'token'));
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
