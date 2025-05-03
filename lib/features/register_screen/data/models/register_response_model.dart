
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response_model.g.dart';
@JsonSerializable()
class RegisterResponseModel {
  String? message;
  @JsonKey(name: "data")
  Data? userData;
  bool? status;
  int? code;

  RegisterResponseModel({this.message, this.userData, this.status, this.code});

 factory RegisterResponseModel.fromJson(Map<String, dynamic> json) => _$RegisterResponseModelFromJson(json);

}

@JsonSerializable()
class Data {
  String? token;
  String? username;

  Data({this.token, this.username});

 factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);


}
