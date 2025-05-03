

import 'package:json_annotation/json_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseMode {
  String? message;
  @JsonKey(name: "data")
  Data? userData;
  bool? status;
  int? code;

  LoginResponseMode({this.message, this.userData, this.status, this.code});

  factory LoginResponseMode.fromJson(Map<String, dynamic> json) => _$LoginResponseModeFromJson(json);
}

@JsonSerializable()
class Data {
  String? token;
  @JsonKey(name: "name")
  String? username;

  Data({this.token, this.username});

  factory  Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
