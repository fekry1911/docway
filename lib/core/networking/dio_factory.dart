import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../features/login_screen/presentation/login.dart';
import '../../main.dart';
import '../local_shared/cache_helper.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      await addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static Future<void> addDioHeaders() async {
    final token = CacheHelper.getString(key: 'token');
    dio?.options.headers = {
      'Accept': 'application/json',
      if (CacheHelper.getString(key: 'token') != null)
        'Authorization': 'Bearer ${CacheHelper.getString(key: 'token')}',
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {'Authorization': 'Bearer $token'};
  }

  static void addDioInterceptor() {
    dio?.interceptors.addAll([
      PrettyDioLogger(responseHeader: true, responseBody: true),
      InterceptorsWrapper(
        onError: (DioException e, handler) async {
          print(
            "!!!!!!!!!!!@@@@@@@@@@@@@@@###############%%%%%%%%%^^^^^^^^^^^^^&&&&&&&&&&&&*********",
          );
          print("REQUEST HEADERS: ${e.response?.headers}");
          if (e.response?.statusCode == 401&&CacheHelper.getString(key: "token")!=null) {
            await CacheHelper.removeString(key: "token");
            navigatorKey.currentState?.pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => LoginScreen()),
              (route) => false,
            );
          } else {
            handler.next(e);
          }
        },
      ),
    ]);
  }
}
