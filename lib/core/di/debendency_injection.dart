import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/rebo/doctor_rebo.dart';
import '../../features/home/logic/cubit/doctor_cubit.dart';
import '../../features/home_page/logic/cubit/cubit.dart';
import '../../features/login_screen/data/rebo/login_rebo.dart';
import '../../features/login_screen/logic/cubit/login_cubit.dart';
import '../../features/register_screen/cubit/register_cubit.dart';
import '../../features/register_screen/data/rebo/rebo.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  Dio dio=await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(()=>ApiService(dio));

// Alternatively you could write it if you don't like global variables
  getIt.registerLazySingleton<LoginRebo>(()=>LoginRebo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(()=>LoginCubit(getIt<LoginRebo>()));

  getIt.registerLazySingleton<RegisterRebo>(()=>RegisterRebo(getIt<ApiService>()));
  getIt.registerFactory<RegisterCubit>(()=>RegisterCubit(getIt<RegisterRebo>()));

  getIt.registerLazySingleton<DoctorRebo>(()=>DoctorRebo(getIt<ApiService>()));
  getIt.registerFactory<DoctorCubit>(()=>DoctorCubit(getIt<DoctorRebo>()));
  getIt.registerFactory<DoctorHomeCubit>(()=>DoctorHomeCubit(getIt<DoctorRebo>()));


}