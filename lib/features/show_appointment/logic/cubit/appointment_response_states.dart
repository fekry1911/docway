import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/appointment_response_model.dart';
part 'appointment_response_states.freezed.dart';
@Freezed()
class AppointmentResponseStates with _$AppointmentResponseStates{
  const factory AppointmentResponseStates.initial() = Initial;
  const factory AppointmentResponseStates.loading() = Loading;
  const factory AppointmentResponseStates.success(AppointmentApiResponse data) = Success;
  const factory AppointmentResponseStates.error(String message) = Error;

}