// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _ar = {
  "on_boarding": {
    "title": "أفضل تطبيق \n لحجز مواعيد الأطباء",
    "info": "مع DocWay، نظّم كل مواعيدك الطبية بسهولة واستمتع بتجربة جديدة كليًا في عالم الرعاية الصحية.",
    "button_text": "هيا لنبدا"
  },
  "auth": {
    "Welcome": "مرحبًا بعودتك",
    "summry": "نحن متحمسون لعودتك، لا يسعنا الانتظار لمعرفة ما كنت تفعله منذ آخر مرة سجلت فيها الدخول.",
    "email": "البريد الإلكتروني",
    "password": "كلمة المرور",
    "forgot_password": "هل نسيت كلمة المرور؟",
    "login": "تسجيل الدخول",
    "terms": "بتسجيل الدخول، فإنك توافق على الشروط والأحكام وسياسة الخصوصية الخاصة بنا.",
    "not_have_account": "ليس لديك حساب بعد؟",
    "sign_up": "إنشاء حساب"
  }
};
static const Map<String,dynamic> _en = {
  "on_boarding": {
    "title": "Best Doctor \n Appointment App",
    "info": "Manage and schedule all of your medical appointments easily with DocWay to get a new experience.",
    "button_text": "Get Started"
  },
  "auth": {
    "Welcome": "Welcome Back",
    "summry": "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
    "email": "Email",
    "password": "Password",
    "forgot_password": "Forgot Password?",
    "login": "Login",
    "terms": "By logging, you agree to our  Terms & Conditions and PrivacyPolicy.",
    "not_have_account": "Already have an account yet?",
    "sign_up": "Sign Up"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": _ar, "en": _en};
}
