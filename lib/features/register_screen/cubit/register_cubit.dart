import 'package:docway/features/register_screen/cubit/register_state.dart';
import 'package:docway/features/register_screen/data/rebo/rebo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_error_handler.dart';
import '../data/models/register_model.dart';
import '../data/models/register_response_model.dart';

class RegisterCubit extends Cubit<RegisterStates>{
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController confirmPassword=TextEditingController();
  TextEditingController gender=TextEditingController();

  final formKey = GlobalKey<FormState>();


  RegisterRebo registerRebo;
  RegisterCubit(this.registerRebo) : super(RegisterStates.initial());
  Future<void> register() async {
    emit(RegisterStates.loading());
    final response = await registerRebo.register(RegisterRequestModel(
      name: name.text,
      email: email.text,
      password: password.text,
      phoneNumber: int.parse(phone.text),
      confirmPassword: confirmPassword.text,
      gender: 0,
    ));
    response.when(success: (RegisterResponseModel data) {
      emit(RegisterStates.success(data));
    }, error: (ErrorHandler error) {
      emit(RegisterStates.error(ErrorHandler.handle(error).apiErrorModel.message!));

    });
  }
}