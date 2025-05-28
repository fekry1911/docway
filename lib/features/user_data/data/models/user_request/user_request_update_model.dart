import 'package:json_annotation/json_annotation.dart';

part 'user_request_update_model.g.dart';

@JsonSerializable(createFactory: false) // منع إنشاء fromJson
class UserRequestModel {
  final String name;
  final String email;
  final String phone;
  final int gender;


  UserRequestModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
  });

  Map<String, dynamic> toJson() => _$UserRequestModelToJson(this);
}
