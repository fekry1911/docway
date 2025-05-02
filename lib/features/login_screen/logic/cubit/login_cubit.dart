import 'package:docway/features/login_screen/data/models/login_response_model.dart';
import 'package:docway/features/login_screen/data/rebo/login_rebo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/login_request_model.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginRebo loginRebo;
  LoginCubit(this.loginRebo) : super(LoginStates.initial());

  Future<void> login(LoginRequestModel loginRequestModel) async {
    emit(LoginStates.loading());
    final result = await loginRebo.Login(loginRequestModel);
    result.when(success: (loginResponseMode){
      emit(LoginStates.success(loginResponseMode));
    }, error: (error){
      emit(LoginStates.error(message: error.apiErrorModel.message!));
    });
  }
}