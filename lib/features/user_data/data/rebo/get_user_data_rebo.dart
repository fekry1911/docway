import 'package:docway/core/networking/api_result.dart';
import 'package:docway/core/networking/api_service.dart';
import 'package:docway/features/user_data/data/models/user_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';

class UserDataRebo {
  ApiService apiService;
  UserDataRebo(this.apiService);

  Future<ApiResult<UserResponse>> getUserData() async {
    try {
      final response = await apiService.getUserModel();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(ErrorHandler.handle(e.toString()));
    }
  }
}