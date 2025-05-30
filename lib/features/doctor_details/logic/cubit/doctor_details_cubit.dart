import 'package:docway/features/doctor_details/data/models/appointment_model/appointment_request_model.dart';
import 'package:docway/features/doctor_details/data/models/doctor_model.dart';
import 'package:docway/features/doctor_details/data/rebo/appointment_request_rebo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/rebo/doctor_rebo.dart';
import 'doctor_details_states.dart';

class DoctorDetailsCubit extends Cubit<DoctorDetailsStates>{
  DoctorDetailsRebo doctorDetailsRebo;
  AppointmentRequestRebo appointmentRequestRebo;
  DoctorDetailsCubit(this.doctorDetailsRebo,this.appointmentRequestRebo) : super(DoctorDetailsStates.initial());
  DoctorDetailsResponse? doctorDetailsResponse;
  Future<void> getDoctorDetails(int id)async{
    emit(DoctorDetailsStates.loading());
    final result = await doctorDetailsRebo.GetDoctorDetails(id);
    result.when(success: (doctorDetails){
      doctorDetailsResponse=doctorDetails;
      emit(DoctorDetailsStates.success());
    }, error: (error){
      emit(DoctorDetailsStates.error(message: error.apiErrorModel.message!));
    });
  }
  Future<void> makeAppointment(int id,String startTime,String notes)async{
    emit(DoctorDetailsStates.loading1());
    final result=await appointmentRequestRebo.makeAppointment(AppointmentRequestModel(id, startTime, notes));
    result.when(success: (success){
      emit(DoctorDetailsStates.success1());
    }, error: (error){
      emit(DoctorDetailsStates.error2(message: error.apiErrorModel.message!));
    });
  }
}