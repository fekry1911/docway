

import 'package:json_annotation/json_annotation.dart';

part 'doctor_response_model.g.dart';

@JsonSerializable()
class DoctorsResponseModel {
  String? message;
  List<Data2>? data;
  bool? status;
  int? code;

  DoctorsResponseModel({this.message, this.data, this.status, this.code});

  factory DoctorsResponseModel.fromJson(Map<String, dynamic> json)=> _$DoctorsResponseModelFromJson(json);

}


@JsonSerializable()
class Data2 {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  int? appointPrice;
  String? startTime;
  String? endTime;

  Data2(
      {this.id,
        this.name,
        this.email,
        this.phone,
        this.photo,
        this.gender,
        this.address,
        this.description,
        this.degree,
        this.specialization,
        this.city,
        this.appointPrice,
        this.startTime,
        this.endTime});

  factory Data2.fromJson(Map<String, dynamic> json)=> _$DataFromJson(json);
}




@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});

  factory Specialization.fromJson(Map<String, dynamic> json)=> _$SpecializationFromJson(json);

}




@JsonSerializable()
class City {
  int? id;
  String? name;
  Specialization? governrate;

  City({this.id, this.name, this.governrate});

  factory City.fromJson(Map<String, dynamic> json)=> _$CityFromJson(json);

}
