
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.g.dart';
@JsonSerializable()
class LoginRequestModel{
  String name;
  String password;
  LoginRequestModel(this.name,this.password);
  
  Map<String,dynamic> toJson() =>_$LoginRequestModelToJson(this);

}