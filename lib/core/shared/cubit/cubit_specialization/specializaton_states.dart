
import 'package:freezed_annotation/freezed_annotation.dart';

part 'specializaton_states.freezed.dart';
@Freezed()
abstract class SpecializationStates<T> with _$SpecializationStates<T>{
  const factory SpecializationStates.initial() = _Initial;
  const factory SpecializationStates.loading() = Loading;
  const factory SpecializationStates.success(T data) = Success;
  const factory SpecializationStates.error({required String message}) = Error;

}