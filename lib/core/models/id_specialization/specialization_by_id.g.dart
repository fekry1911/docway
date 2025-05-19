// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_by_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationDetailsResponse _$SpecializationDetailsResponseFromJson(
  Map<String, dynamic> json,
) => SpecializationDetailsResponse(
  message: json['message'] as String,
  data: SpecializationIdData.fromJson(json['data'] as Map<String, dynamic>),
  status: json['status'] as bool,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$SpecializationDetailsResponseToJson(
  SpecializationDetailsResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.data,
  'status': instance.status,
  'code': instance.code,
};

SpecializationIdData _$SpecializationIdDataFromJson(
  Map<String, dynamic> json,
) => SpecializationIdData(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  doctors:
      (json['doctors'] as List<dynamic>)
          .map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$SpecializationIdDataToJson(
  SpecializationIdData instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'doctors': instance.doctors,
};

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => DoctorModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  photo: json['photo'] as String,
  gender: json['gender'] as String,
  address: json['address'] as String,
  description: json['description'] as String,
  degree: json['degree'] as String,
  specialization: Specialization.fromJson(
    json['specialization'] as Map<String, dynamic>,
  ),
  city: City.fromJson(json['city'] as Map<String, dynamic>),
  appointPrice: (json['appoint_price'] as num).toInt(),
  startTime: json['start_time'] as String,
  endTime: json['end_time'] as String,
);

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
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

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

City _$CityFromJson(Map<String, dynamic> json) => City(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  governrate: Governrate.fromJson(json['governrate'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'governrate': instance.governrate,
};

Governrate _$GovernrateFromJson(Map<String, dynamic> json) =>
    Governrate(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$GovernrateToJson(Governrate instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
