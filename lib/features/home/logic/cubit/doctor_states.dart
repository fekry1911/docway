
import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor_states.freezed.dart';

@freezed
abstract class DoctorStates<T> with _$DoctorStates<T>{
  const factory DoctorStates.initial() = _Initial;
  const factory DoctorStates.loading() = Loading;
  const factory DoctorStates.success(T data) = Success;
  const factory DoctorStates.error({required String message}) = Error;
}