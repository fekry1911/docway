// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentRequestModel _$AppointmentRequestModelFromJson(
  Map<String, dynamic> json,
) => AppointmentRequestModel(
  (json['doctor_id'] as num?)?.toInt(),
  json['start_time'] as String?,
  json['notes'] as String?,
);

Map<String, dynamic> _$AppointmentRequestModelToJson(
  AppointmentRequestModel instance,
) => <String, dynamic>{
  'doctor_id': instance.doctor_id,
  'start_time': instance.start_time,
  'notes': instance.notes,
};
