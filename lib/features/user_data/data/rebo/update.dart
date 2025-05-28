
import 'package:docway/core/networking/api_error_handler.dart';
import 'package:docway/core/networking/api_result.dart';
import 'package:docway/core/networking/api_service.dart';

import '../models/user_request/user_request_update_model.dart';

class UpdateUserRebo {
  ApiService apiService;

  UpdateUserRebo(this.apiService);

  Future<ApiResult<void>> updateUser(UserRequestModel userRequestModel) async {
    try {
      final result = await apiService.updateUser(userRequestModel);
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.error(ErrorHandler.handle(e));
    }
  }
}
