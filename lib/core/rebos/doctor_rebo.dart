

import '../models/doctor/doctor_response_model.dart';
import '../networking/api_error_handler.dart';
import '../networking/api_result.dart';
import '../networking/api_service.dart';


class DoctorRebo {
  ApiService apiService;
  DoctorRebo(this.apiService);

  Future<ApiResult<DoctorsResponseModel>> getAllDoctors() async {
    try {
      final response = await apiService.getAllDoctors();
      return ApiResult.success(response);
    } catch (errro) {
      print("Caught error in DoctorRebo: $errro");
      final handled = ErrorHandler.handle(errro);
      print("Handled error: $handled");
      return ApiResult.error(ErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<DoctorsResponseModel>> searchAboutDoctor(String name) async {
    try {
      final response = await apiService.searchDoctors(name);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.error(ErrorHandler.handle(errro));
    }
  }
}