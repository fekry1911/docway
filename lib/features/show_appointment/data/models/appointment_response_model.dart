import 'package:json_annotation/json_annotation.dart';

part 'appointment_response_model.g.dart';

@JsonSerializable()
class AppointmentApiResponse {
  final String message;
  final List<AppointmentData> data;
  final bool status;
  final int code;

  AppointmentApiResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory AppointmentApiResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentApiResponseFromJson(json);
}

@JsonSerializable()
class AppointmentData {
  final int id;
  final DoctorInfo doctor;
  final PatientInfo patient;

  @JsonKey(name: 'appointment_time')
  final String appointmentTime;

  @JsonKey(name: 'appointment_end_time')
  final String appointmentEndTime;

  final String status;
  final String notes;

  @JsonKey(name: 'appointment_price')
  final int appointmentPrice;

  AppointmentData({
    required this.id,
    required this.doctor,
    required this.patient,
    required this.appointmentTime,
    required this.appointmentEndTime,
    required this.status,
    required this.notes,
    required this.appointmentPrice,
  });

  factory AppointmentData.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDataFromJson(json);
}

@JsonSerializable()
class DoctorInfo {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String photo;
  final String gender;
  final String address;
  final String description;
  final String degree;
  final SpecialtyInfo? specialization;
  final CityInfo? city;

  @JsonKey(name: 'appoint_price')
  final int appointPrice;

  @JsonKey(name: 'start_time')
  final String startTime;

  @JsonKey(name: 'end_time')
  final String endTime;

  DoctorInfo({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.photo,
    required this.gender,
    required this.address,
    required this.description,
    required this.degree,
    this.specialization,
    this.city,
    required this.appointPrice,
    required this.startTime,
    required this.endTime,
  });

  factory DoctorInfo.fromJson(Map<String, dynamic> json) =>
      _$DoctorInfoFromJson(json);
}

@JsonSerializable()
class SpecialtyInfo {
  final int id;
  final String name;

  SpecialtyInfo({required this.id, required this.name});

  factory SpecialtyInfo.fromJson(Map<String, dynamic> json) =>
      _$SpecialtyInfoFromJson(json);
}

@JsonSerializable()
class CityInfo {
  final int id;
  final String name;
  final SpecialtyInfo? governrate;

  CityInfo({
    required this.id,
    required this.name,
    this.governrate,
  });

  factory CityInfo.fromJson(Map<String, dynamic> json) =>
      _$CityInfoFromJson(json);
}

@JsonSerializable()
class PatientInfo {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String gender;

  PatientInfo({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
  });

  factory PatientInfo.fromJson(Map<String, dynamic> json) =>
      _$PatientInfoFromJson(json);
}
