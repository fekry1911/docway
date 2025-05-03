import 'package:docway/core/networking/api_result.dart';
import 'package:docway/core/networking/api_service.dart';
import 'package:docway/features/login_screen/data/models/login_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../models/login_request_model.dart';

class LoginRebo{
  ApiService apiService;
  LoginRebo(this.apiService);

  Future<ApiResult<LoginResponseMode>> Login(LoginRequestModel loginRequestModel) async {
    try {
      final response = await apiService.login(loginRequestModel);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.error(ErrorHandler.handle(errro));
    }
  }
}