import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.g.dart';
@JsonSerializable()
class RegisterRequestModel {
  String name;
  String email;
  String password;
  @JsonKey(name: "password_confirmation")
  String confirmPassword;
  @JsonKey(name: "phone")
  int phoneNumber;
  int gender;
  RegisterRequestModel({required this.name,required this.email,required this.password,required this.confirmPassword,required this.phoneNumber,required this.gender});

  Map<String,dynamic> toJson() =>_$RegisterRequestModelToJson(this);
}