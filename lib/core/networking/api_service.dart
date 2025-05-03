import 'package:dio/dio.dart';
import 'package:docway/features/login_screen/data/models/login_request_model.dart';
import 'package:docway/features/login_screen/data/models/login_response_model.dart';
import 'package:retrofit/http.dart';

import '../../features/register_screen/data/models/register_model.dart';
import '../../features/register_screen/data/models/register_response_model.dart';
import 'api_const.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConst.apiBaseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String baseUrl})=_ApiService;
  @POST(ApiConst.login)
  Future<LoginResponseMode> login(@Body() LoginRequestModel loginRequestModel);
  @POST(ApiConst.register)
  Future<RegisterResponseModel> register(@Body() RegisterRequestModel registerRequestModel);
}