// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorDetailsResponse _$DoctorDetailsResponseFromJson(
  Map<String, dynamic> json,
) => DoctorDetailsResponse(
  message: json['message'] as String,
  data: DoctorDetailsData.fromJson(json['data'] as Map<String, dynamic>),
  status: json['status'] as bool,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$DoctorDetailsResponseToJson(
  DoctorDetailsResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.data,
  'status': instance.status,
  'code': instance.code,
};

DoctorDetailsData _$DoctorDetailsDataFromJson(Map<String, dynamic> json) =>
    DoctorDetailsData(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      photo: json['photo'] as String,
      gender: json['gender'] as String,
      address: json['address'] as String,
      description: json['description'] as String,
      degree: json['degree'] as String,
      specialization: DoctorDetailsSpecialization.fromJson(
        json['specialization'] as Map<String, dynamic>,
      ),
      city: DoctorDetailsCity.fromJson(json['city'] as Map<String, dynamic>),
      appointPrice: (json['appoint_price'] as num).toInt(),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
    );

Map<String, dynamic> _$DoctorDetailsDataToJson(DoctorDetailsData instance) =>
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

DoctorDetailsSpecialization _$DoctorDetailsSpecializationFromJson(
  Map<String, dynamic> json,
) => DoctorDetailsSpecialization(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$DoctorDetailsSpecializationToJson(
  DoctorDetailsSpecialization instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

DoctorDetailsCity _$DoctorDetailsCityFromJson(Map<String, dynamic> json) =>
    DoctorDetailsCity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      governrate: DoctorDetailsGovernrate.fromJson(
        json['governrate'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$DoctorDetailsCityToJson(DoctorDetailsCity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'governrate': instance.governrate,
    };

DoctorDetailsGovernrate _$DoctorDetailsGovernrateFromJson(
  Map<String, dynamic> json,
) => DoctorDetailsGovernrate(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$DoctorDetailsGovernrateToJson(
  DoctorDetailsGovernrate instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};
