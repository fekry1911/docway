import 'package:docway/core/networking/api_service.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/doctor_model.dart';

class DoctorDetailsRebo {
  ApiService apiService;
  DoctorDetailsRebo(this.apiService);

  Future<ApiResult<DoctorDetailsResponse>> GetDoctorDetails(int id) async {
    try {
      final result = await apiService.getDoctorById(id);
      return ApiResult.success(result);
    }catch(error){
      return ApiResult.error(ErrorHandler.handle(error));
    }
  }
}