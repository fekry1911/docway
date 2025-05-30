
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';
@Freezed()
class RegisterStates<T> with _$RegisterStates<T>{
  const factory RegisterStates.initial() = Initial;
  const factory RegisterStates.loading() = Loading;
  const factory RegisterStates.success(T data) = Success;
  const factory RegisterStates.error(String message) = Error;
  const factory RegisterStates.changeSecure(bool isSecure) = ChangeSecure;


}