// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponseModel _$RegisterResponseModelFromJson(
  Map<String, dynamic> json,
) => RegisterResponseModel(
  message: json['message'] as String?,
  userData:
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
  status: json['status'] as bool?,
  code: (json['code'] as num?)?.toInt(),
);

Map<String, dynamic> _$RegisterResponseModelToJson(
  RegisterResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.userData,
  'status': instance.status,
  'code': instance.code,
};

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  token: json['token'] as String?,
  username: json['username'] as String?,
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'token': instance.token,
  'username': instance.username,
};
