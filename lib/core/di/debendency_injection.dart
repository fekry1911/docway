import 'package:dio/dio.dart';
import 'package:docway/core/networking/api_service.dart';
import 'package:docway/core/networking/dio_factory.dart';
import 'package:docway/features/login_screen/data/rebo/login_rebo.dart';
import 'package:docway/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:docway/features/register_screen/cubit/register_cubit.dart';
import 'package:docway/features/register_screen/data/rebo/rebo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  Dio dio=DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(()=>ApiService(dio));

// Alternatively you could write it if you don't like global variables
  getIt.registerLazySingleton<LoginRebo>(()=>LoginRebo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(()=>LoginCubit(getIt<LoginRebo>()));

  getIt.registerLazySingleton<RegisterRebo>(()=>RegisterRebo(getIt<ApiService>()));
  getIt.registerFactory<RegisterCubit>(()=>RegisterCubit(getIt<RegisterRebo>()));

}