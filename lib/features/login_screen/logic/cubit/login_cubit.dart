import 'package:docway/features/login_screen/data/rebo/login_rebo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const/const.dart';
import '../../../../core/local_shared/cache_helper.dart';
import '../../../../core/networking/dio_factory.dart';
import '../../data/models/login_request_model.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginRebo loginRebo;

  LoginCubit(this.loginRebo) : super(LoginStates.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int c = 1;

  bool isLoading = false;

  Future<void> login() async {
    emit(LoginStates.loading());
    final result = await loginRebo.Login(
      LoginRequestModel(emailController.text, passwordController.text),
    );
    result.when(
      success: (loginResponseMode) {
        CacheHelper.putString(key: 'token', value: loginResponseMode.userData!.token!);
        TOKEN=CacheHelper.getStringToken(key: 'token')!;
        DioFactory.setTokenIntoHeaderAfterLogin(TOKEN);
        emit(LoginStates.success(loginResponseMode));
      },
      error: (error) {
        emit(LoginStates.error(message: error.apiErrorModel.message!));
      },
    );
  }
}
