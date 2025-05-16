

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/login_request_model.dart';
import '../models/login_response_model.dart';

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