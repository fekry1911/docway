import 'package:docway/core/networking/api_result.dart';
import 'package:docway/core/networking/api_service.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../models/appointment_model/appointment_request_model.dart';

class AppointmentRequestRebo {
  ApiService apiService;
  AppointmentRequestRebo(this.apiService);

  Future<ApiResult<void>> makeAppointment(AppointmentRequestModel appointmentRequestModel) async{
    try{
      final result=await apiService.makeAppointment(appointmentRequestModel);
      return ApiResult.success(result);
    }
        catch(error){
          return ApiResult.error(ErrorHandler.handle(error));

        }
  }

}