import 'package:docway/features/user_data/data/rebo/update.dart';
import 'package:docway/features/user_data/logic/update_user_cubit/update_user_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/user_request/user_request_update_model.dart';

class UpdateUSerCubit extends Cubit<UpdateUserStates> {
  UpdateUserRebo updateUserRebo;
  UpdateUSerCubit(this.updateUserRebo) : super(UpdateUserStates.initial());

  Future<void> updateUser(UserRequestModel userRequestModel) async {
    emit(UpdateUserStates.loading());
    final result = await updateUserRebo.updateUser(userRequestModel);
    result.when(success: (userRequestModel) {
      emit(UpdateUserStates.success());
    }, error: (ErrorHandler error) {
      emit(UpdateUserStates.error(error.apiErrorModel.message!));
    });
  }
}