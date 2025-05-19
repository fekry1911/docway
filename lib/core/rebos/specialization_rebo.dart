

import '../models/all_specialization/specialization_model.dart';
import '../networking/api_error_handler.dart';
import '../networking/api_result.dart';
import '../networking/api_service.dart';

class Specialization_rebo{
  ApiService apiService;
  Specialization_rebo(this.apiService);

  Future<ApiResult<SpecializationResponseModel>> getSpecialization()async {
    try {
      final response = await apiService.getSpecialization();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(ErrorHandler.handle(e));
    }
  }
}