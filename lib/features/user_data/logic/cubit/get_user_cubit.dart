import 'package:docway/features/user_data/data/rebo/get_user_data_rebo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/local_shared/cache_helper.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../data/rebo/logout_rebo.dart';
import '../../data/models/user_response_model.dart';
import 'get_user_states.dart';

class UserCubit extends Cubit<UserStates> {
  UserDataRebo userDataRebo;
  LogOutRebo logOutRebo;
  UserCubit(this.userDataRebo,this.logOutRebo) : super(UserStates.initial());


  UserResponse? data;

  Future<void> getAiiUserData() async {
    emit(UserStates.loading());
    final result = await userDataRebo.getUserData();
    result.when(
        success: (UserResponse data) {
          this.data = data;
          emit(UserStates.success(data));

        }, error: (ErrorHandler error) {
          emit(UserStates.error(error.apiErrorModel.message!));

    });
  }
  Future<void> LogOut()async {
    emit(UserStates.loadingLogOut());
    final result=await logOutRebo.LogOut();
    result.when(success: (success){
      CacheHelper.removeString(key: 'token');
      emit(UserStates.successLogOut());
    },
        error: (error){
      emit(UserStates.errorLogOut(message: error.apiErrorModel.message!));

        });
  }

}