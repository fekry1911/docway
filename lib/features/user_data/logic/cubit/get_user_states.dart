
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_states.freezed.dart';
@Freezed()
class UserStates<T> with _$UserStates<T>{
  const factory UserStates.initial() = Initial;
  const factory UserStates.loading() = Loading;
  const factory UserStates.success(T data) = Success;
  const factory UserStates.error(String message) = Error;
  const factory UserStates.errorLogOut({required String message}) = Error2;
  const factory UserStates.successLogOut() = Success1;
  const factory UserStates.loadingLogOut() = Loading1;
}