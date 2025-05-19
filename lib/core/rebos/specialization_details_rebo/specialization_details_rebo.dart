
import '../../models/id_specialization/specialization_by_id.dart';
import '../../networking/api_error_handler.dart';
import '../../networking/api_result.dart';
import '../../networking/api_service.dart';

class SpecializationRetailsRebo{
  ApiService apiService;
  SpecializationRetailsRebo(this.apiService);

  Future<ApiResult<SpecializationDetailsResponse>> getSpecializationDetails(int id)async{
    try {
      final result = await apiService.getSpecializationById(id);
      return ApiResult.success(result);
    }catch(error){
      return ApiResult.error(ErrorHandler.handle(error));
    }
  }

}