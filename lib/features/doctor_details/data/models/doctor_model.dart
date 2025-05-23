import 'package:json_annotation/json_annotation.dart';

part 'doctor_model.g.dart';

@JsonSerializable()
class DoctorDetailsResponse {
  final String message;
  final DoctorDetailsData data;
  final bool status;
  final int code;

  DoctorDetailsResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory DoctorDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsResponseFromJson(json);
}

@JsonSerializable()
class DoctorDetailsData {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String photo;
  final String gender;
  final String address;
  final String description;
  final String degree;
  final DoctorDetailsSpecialization specialization;
  final DoctorDetailsCity city;
  @JsonKey(name: 'appoint_price')
  final int appointPrice;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;

  DoctorDetailsData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.photo,
    required this.gender,
    required this.address,
    required this.description,
    required this.degree,
    required this.specialization,
    required this.city,
    required this.appointPrice,
    required this.startTime,
    required this.endTime,
  });

  factory DoctorDetailsData.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsDataFromJson(json);
}

@JsonSerializable()
class DoctorDetailsSpecialization {
  final int id;
  final String name;

  DoctorDetailsSpecialization({
    required this.id,
    required this.name,
  });

  factory DoctorDetailsSpecialization.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsSpecializationFromJson(json);
}

@JsonSerializable()
class DoctorDetailsCity {
  final int id;
  final String name;
  final DoctorDetailsGovernrate governrate;

  DoctorDetailsCity({
    required this.id,
    required this.name,
    required this.governrate,
  });

  factory DoctorDetailsCity.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsCityFromJson(json);
}

@JsonSerializable()
class DoctorDetailsGovernrate {
  final int id;
  final String name;

  DoctorDetailsGovernrate({
    required this.id,
    required this.name,
  });

  factory DoctorDetailsGovernrate.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsGovernrateFromJson(json);
}
