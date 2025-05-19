
import 'package:freezed_annotation/freezed_annotation.dart';
part 'specialization_details_states.freezed.dart';

@Freezed()
class SpecializationDetailsStates with _$SpecializationDetailsStates {
  factory SpecializationDetailsStates.initial() = Initial;
  factory SpecializationDetailsStates.loading() = Loading;
  factory SpecializationDetailsStates.success() = Success;
  factory SpecializationDetailsStates.error({required String message}) = Error;

}