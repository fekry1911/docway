import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_details_states.freezed.dart';

@Freezed()
class DoctorDetailsStates with _$DoctorDetailsStates {
  factory DoctorDetailsStates.initial() = Initial;

  factory DoctorDetailsStates.loading() = Loading;

  factory DoctorDetailsStates.loading1() = Loading1;

  factory DoctorDetailsStates.success() = Success;

  factory DoctorDetailsStates.success1() = Success1;

  factory DoctorDetailsStates.error({required String message}) = Error;

  factory DoctorDetailsStates.error2({required String message}) = Error2;

}
