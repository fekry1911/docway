import 'package:docway/core/networking/api_service.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/register_model.dart';
import '../models/register_response_model.dart';

class RegisterRebo {
  ApiService apiService;

  RegisterRebo(this.apiService);

  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestModel registerRequestModel) async {
    try {
      final response = await apiService.register(registerRequestModel);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.error(ErrorHandler.handle(errro));
    }
  }
}