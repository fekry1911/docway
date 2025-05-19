
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class LogOutRebo{
  ApiService apiService;
  LogOutRebo(this.apiService);


  Future<ApiResult<void>> LogOut() async {
    try {
      final response = await apiService.logOut();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.error(ErrorHandler.handle(errro));
    }

  }
}