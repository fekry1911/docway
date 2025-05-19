
import 'package:freezed_annotation/freezed_annotation.dart';
part 'specialization_by_id.g.dart';

@JsonSerializable()
class SpecializationDetailsResponse {
  final String message;
  final SpecializationIdData data;
  final bool status;
  final int code;

  SpecializationDetailsResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory SpecializationDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDetailsResponseFromJson(json);
}

@JsonSerializable()
class SpecializationIdData {
  final int id;
  final String name;
  final List<DoctorModel> doctors;

  SpecializationIdData({
    required this.id,
    required this.name,
    required this.doctors,
  });

  factory SpecializationIdData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationIdDataFromJson(json);
}

@JsonSerializable()
class DoctorModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String photo;
  final String gender;
  final String address;
  final String description;
  final String degree;
  final Specialization specialization;
  final City city;
  @JsonKey(name: 'appoint_price')
  final int appointPrice;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;

  DoctorModel({
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

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}

@JsonSerializable()
class Specialization {
  final int id;
  final String name;

  Specialization({
    required this.id,
    required this.name,
  });

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@JsonSerializable()
class City {
  final int id;
  final String name;
  final Governrate governrate;

  City({
    required this.id,
    required this.name,
    required this.governrate,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@JsonSerializable()
class Governrate {
  final int id;
  final String name;

  Governrate({
    required this.id,
    required this.name,
  });

  factory Governrate.fromJson(Map<String, dynamic> json) =>
      _$GovernrateFromJson(json);
}
