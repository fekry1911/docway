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
  }
};
static const Map<String,dynamic> _en = {
  "on_boarding": {
    "title": "Best Doctor \n Appointment App",
    "info": "Manage and schedule all of your medical appointments easily with DocWay to get a new experience.",
    "button_text": "Get Started"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": _ar, "en": _en};
}
