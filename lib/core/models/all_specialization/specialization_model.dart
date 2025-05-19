
import 'package:freezed_annotation/freezed_annotation.dart';
part 'specialization_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  String? message;
  List<SpecializationData>? data;
  bool? status;
  int? code;

  SpecializationResponseModel(
      {this.message, this.data, this.status, this.code});

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) => _$SpecializationResponseModelFromJson(json);

}
@JsonSerializable()
class SpecializationData {
  int? id;
  String? name;

  SpecializationData({this.id, this.name});

  factory SpecializationData.fromJson(Map<String, dynamic> json)=> _$SpecializationDataFromJson(json);

}



