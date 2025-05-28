class ApiConst{

  static const String apiBaseUrl="https://vcare.integration25.com/api/";

  static const String login="auth/login";

  static const String register="auth/register";

  static const String doctors="doctor/index";

  static const String searchDoctors="doctor/doctor-search";

  static const String logOut="auth/logout";

  static const String specialization="specialization/index";

  static const String specializationIndex = "/specialization/show/{id}";

  static const String doctorDetails = "doctor/show/{id}";

  static const String appointment = "appointment/store";

  static const String getAppointment = "appointment/index";

  static const String userData = "user/profile";

  static const String userDataUpdate = "user/update";






}
class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}