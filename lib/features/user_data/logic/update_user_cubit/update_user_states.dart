
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_states.freezed.dart';
@Freezed()
class UpdateUserStates<T> with _$UpdateUserStates<T> {
  const factory UpdateUserStates.initial() = Initial;
  const factory UpdateUserStates.loading() = Loading;
  const factory UpdateUserStates.success() = Success;
  const factory UpdateUserStates.error(String message) = Error;

}