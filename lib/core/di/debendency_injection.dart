import 'package:dio/dio.dart';
import 'package:docway/features/show_appointment/data/rebo/appointment_rebo_response.dart';
import 'package:get_it/get_it.dart';
import '../../features/doctor_details/data/rebo/appointment_request_rebo.dart';
import '../../features/doctor_details/data/rebo/doctor_rebo.dart';
import '../../features/doctor_details/logic/cubit/doctor_details_cubit.dart';
import '../../features/home/logic/cubit/doctor_cubit.dart';
import '../../features/home_page/data/rebo/logout_rebo.dart';
import '../../features/home_page/logic/cubit/cubit_gethomedoctors/cubit.dart';
import '../../features/login_screen/data/rebo/login_rebo.dart';
import '../../features/login_screen/logic/cubit/login_cubit.dart';
import '../../features/register_screen/cubit/register_cubit.dart';
import '../../features/register_screen/data/rebo/rebo.dart';
import '../../features/show_appointment/logic/cubit/appointment_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../rebos/doctor_rebo.dart';
import '../rebos/specialization_details_rebo/specialization_details_rebo.dart';
import '../rebos/specialization_rebo.dart';
import '../shared/cubit/cubit_specialization/sprcialization_cubit.dart';
import '../shared/cubit/cubit_specialization_details/specialization_details_cubit.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  Dio dio=await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(()=>ApiService(dio));

// Alternatively you could write it if you don't like global variables
  // login
  getIt.registerLazySingleton<LoginRebo>(()=>LoginRebo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(()=>LoginCubit(getIt<LoginRebo>()));
  //signUp
  getIt.registerLazySingleton<RegisterRebo>(()=>RegisterRebo(getIt<ApiService>()));
  getIt.registerFactory<RegisterCubit>(()=>RegisterCubit(getIt<RegisterRebo>()));
  //get doctors in screen
  getIt.registerLazySingleton<DoctorRebo>(()=>DoctorRebo(getIt<ApiService>()));
  getIt.registerFactory<DoctorCubit>(()=>DoctorCubit(getIt<DoctorRebo>()));
  // get Specialization in home screen
  getIt.registerLazySingleton<Specialization_rebo>(()=>Specialization_rebo(getIt<ApiService>()));
  getIt.registerFactory<SpecializationCubit>(()=>SpecializationCubit(getIt<Specialization_rebo>()));
  // log out
  getIt.registerLazySingleton<LogOutRebo>(()=>LogOutRebo(getIt<ApiService>()));
  getIt.registerFactory<DoctorHomeCubit>(()=>DoctorHomeCubit(getIt<DoctorRebo>(),getIt<LogOutRebo>()));
  // get specialization details
  getIt.registerLazySingleton<SpecializationRetailsRebo>(()=>SpecializationRetailsRebo(getIt<ApiService>()));
  getIt.registerFactory<SpecializationDetailsCubit>(()=>SpecializationDetailsCubit(getIt<SpecializationRetailsRebo>()));
  // get doctor details
  getIt.registerLazySingleton<DoctorDetailsRebo>(()=>DoctorDetailsRebo(getIt<ApiService>()));
  getIt.registerLazySingleton<AppointmentRequestRebo>(()=>AppointmentRequestRebo(getIt<ApiService>()));

  getIt.registerFactory<DoctorDetailsCubit>(()=>DoctorDetailsCubit(getIt<DoctorDetailsRebo>(),getIt<AppointmentRequestRebo>()));

  getIt.registerLazySingleton<AppointmentReboResponse>(()=>AppointmentReboResponse(getIt<ApiService>()));

  getIt.registerFactory<AppointmentResponseApiCubit>(()=>AppointmentResponseApiCubit(getIt<AppointmentReboResponse>()));
}