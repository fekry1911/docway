import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_request_model.g.dart';
@JsonSerializable()
class AppointmentRequestModel {
  int? doctor_id;
  String? start_time;
  String? notes;
  AppointmentRequestModel(this.doctor_id, this.start_time, this.notes);

  Map<String, dynamic> toJson() => _$AppointmentRequestModelToJson(this);


}