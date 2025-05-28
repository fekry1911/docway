
import 'package:freezed_annotation/freezed_annotation.dart';
part 'states.freezed.dart';

@freezed
abstract class DoctorHomeStates<T> with _$DoctorHomeStates<T>{
  const factory DoctorHomeStates.initial() = _Initial;
  const factory DoctorHomeStates.loading() = Loading2;
  const factory DoctorHomeStates.success(T data) = Success;
  const factory DoctorHomeStates.error({required String message}) = Error;


}