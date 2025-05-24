import 'package:docway/core/networking/api_error_handler.dart';
import 'package:docway/core/networking/api_result.dart';
import 'package:docway/core/networking/api_service.dart';

import '../models/appointment_response_model.dart';

class AppointmentReboResponse{
  ApiService apiService;
  AppointmentReboResponse(this.apiService);

  Future<ApiResult<AppointmentApiResponse>> getAppointment()async{
    try{
      final response=await apiService.getAppointment();
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.error(ErrorHandler.handle(e.toString()));
    }

  }

}