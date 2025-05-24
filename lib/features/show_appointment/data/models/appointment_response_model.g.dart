// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentApiResponse _$AppointmentApiResponseFromJson(
  Map<String, dynamic> json,
) => AppointmentApiResponse(
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>)
          .map((e) => AppointmentData.fromJson(e as Map<String, dynamic>))
          .toList(),
  status: json['status'] as bool,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$AppointmentApiResponseToJson(
  AppointmentApiResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.data,
  'status': instance.status,
  'code': instance.code,
};

AppointmentData _$AppointmentDataFromJson(Map<String, dynamic> json) =>
    AppointmentData(
      id: (json['id'] as num).toInt(),
      doctor: DoctorInfo.fromJson(json['doctor'] as Map<String, dynamic>),
      patient: PatientInfo.fromJson(json['patient'] as Map<String, dynamic>),
      appointmentTime: json['appointment_time'] as String,
      appointmentEndTime: json['appointment_end_time'] as String,
      status: json['status'] as String,
      notes: json['notes'] as String,
      appointmentPrice: (json['appointment_price'] as num).toInt(),
    );

Map<String, dynamic> _$AppointmentDataToJson(AppointmentData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctor': instance.doctor,
      'patient': instance.patient,
      'appointment_time': instance.appointmentTime,
      'appointment_end_time': instance.appointmentEndTime,
      'status': instance.status,
      'notes': instance.notes,
      'appointment_price': instance.appointmentPrice,
    };

DoctorInfo _$DoctorInfoFromJson(Map<String, dynamic> json) => DoctorInfo(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  photo: json['photo'] as String,
  gender: json['gender'] as String,
  address: json['address'] as String,
  description: json['description'] as String,
  degree: json['degree'] as String,
  specialization:
      json['specialization'] == null
          ? null
          : SpecialtyInfo.fromJson(
            json['specialization'] as Map<String, dynamic>,
          ),
  city:
      json['city'] == null
          ? null
          : CityInfo.fromJson(json['city'] as Map<String, dynamic>),
  appointPrice: (json['appoint_price'] as num).toInt(),
  startTime: json['start_time'] as String,
  endTime: json['end_time'] as String,
);

Map<String, dynamic> _$DoctorInfoToJson(DoctorInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'address': instance.address,
      'description': instance.description,
      'degree': instance.degree,
      'specialization': instance.specialization,
      'city': instance.city,
      'appoint_price': instance.appointPrice,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };

SpecialtyInfo _$SpecialtyInfoFromJson(Map<String, dynamic> json) =>
    SpecialtyInfo(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$SpecialtyInfoToJson(SpecialtyInfo instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

CityInfo _$CityInfoFromJson(Map<String, dynamic> json) => CityInfo(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  governrate:
      json['governrate'] == null
          ? null
          : SpecialtyInfo.fromJson(json['governrate'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CityInfoToJson(CityInfo instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'governrate': instance.governrate,
};

PatientInfo _$PatientInfoFromJson(Map<String, dynamic> json) => PatientInfo(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  gender: json['gender'] as String,
);

Map<String, dynamic> _$PatientInfoToJson(PatientInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
    };
