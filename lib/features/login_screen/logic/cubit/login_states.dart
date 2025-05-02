
import 'package:docway/features/login_screen/data/models/login_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_states.freezed.dart';

@freezed
abstract class LoginStates<T> with _$LoginStates<T>{
  const factory LoginStates.initial() = _Initial;
  const factory LoginStates.loading() = Loading;
  const factory LoginStates.success(T data) = Success;
  const factory LoginStates.error({required String message}) = Error;


}