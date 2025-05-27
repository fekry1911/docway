
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_states.freezed.dart';
@Freezed()
class UserStates with _$UserStates{
  const factory UserStates.initial() = Initial;
  const factory UserStates.loading() = Loading;
  const factory UserStates.success(String data) = Success;
  const factory UserStates.error(String message) = Error;
}