// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestModel _$RegisterRequestModelFromJson(
  Map<String, dynamic> json,
) => RegisterRequestModel(
  name: json['name'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  confirmPassword: json['password_confirmation'] as String,
  phoneNumber: (json['phone'] as num).toInt(),
  gender: (json['gender'] as num).toInt(),
);

Map<String, dynamic> _$RegisterRequestModelToJson(
  RegisterRequestModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'password': instance.password,
  'password_confirmation': instance.confirmPassword,
  'phone': instance.phoneNumber,
  'gender': instance.gender,
};
