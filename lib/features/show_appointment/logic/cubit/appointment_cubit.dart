import 'package:docway/features/show_appointment/data/rebo/appointment_rebo_response.dart';
import 'package:docway/features/show_appointment/logic/cubit/appointment_response_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/appointment_response_model.dart';

class AppointmentResponseApiCubit extends Cubit<AppointmentResponseStates>{
  AppointmentResponseApiCubit(this.appointmentReboResponse) : super(AppointmentResponseStates.initial());
  AppointmentReboResponse appointmentReboResponse;

  AppointmentApiResponse? appointmentApiResponse;

  Future<void> getAppointmentResponse() async {
    emit(AppointmentResponseStates.loading());
    var response = await appointmentReboResponse.getAppointment();
    response.when(success: (appointmentApiResponse) {
      this.appointmentApiResponse = appointmentApiResponse;
      emit(AppointmentResponseStates.success(appointmentApiResponse));

    }, error: (error){
      emit(AppointmentResponseStates.error(error.toString()));
    });
  }


}