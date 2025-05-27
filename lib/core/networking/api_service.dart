import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../features/doctor_details/data/models/appointment_model/appointment_request_model.dart';
import '../../features/doctor_details/data/models/doctor_model.dart';
import '../../features/login_screen/data/models/login_request_model.dart';
import '../../features/login_screen/data/models/login_response_model.dart';
import '../../features/register_screen/data/models/register_model.dart';
import '../../features/register_screen/data/models/register_response_model.dart';
import '../../features/show_appointment/data/models/appointment_response_model.dart';
import '../../features/user_data/data/models/user_response_model.dart';
import '../models/all_specialization/specialization_model.dart';
import '../models/doctor/doctor_response_model.dart';
import '../models/id_specialization/specialization_by_id.dart';
import 'api_const.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConst.apiBaseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String baseUrl})=_ApiService;
  @POST(ApiConst.login)
  Future<LoginResponseMode> login(@Body() LoginRequestModel loginRequestModel);
  @POST(ApiConst.register)
  Future<RegisterResponseModel> register(@Body() RegisterRequestModel registerRequestModel);
  @GET(ApiConst.doctors)
  Future<DoctorsResponseModel> getAllDoctors();

  @GET(ApiConst.searchDoctors)
  Future<DoctorsResponseModel> searchDoctors(@Query("name") String name);

  @POST(ApiConst.logOut)
  Future<void> logOut();

  @GET(ApiConst.specialization)
  Future<SpecializationResponseModel> getSpecialization();

  @GET(ApiConst.specializationIndex)
  Future<SpecializationDetailsResponse> getSpecializationById(@Path("id") int id);
  @GET(ApiConst.doctorDetails)
  Future<DoctorDetailsResponse> getDoctorById(@Path("id") int id);

  @POST(ApiConst.appointment)
  Future<void> makeAppointment(@Body() AppointmentRequestModel appointmentRequestModel);

  @GET(ApiConst.getAppointment)
  Future<AppointmentApiResponse> getAppointment();

  @GET(ApiConst.userData)
  Future<UserResponse> getUserModel();
}