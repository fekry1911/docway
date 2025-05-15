import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/const/const.dart';
import 'core/di/debendency_injection.dart';
import 'core/generated/codegen_loader.g.dart';
import 'core/local_shared/cache_helper.dart';
import 'features/home/logic/cubit/doctor_cubit.dart';
import 'features/home_page/logic/cubit/cubit.dart';
import 'features/home_page/presentation/home_pagee.dart';
import 'features/spalsh/presentation/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper.getStringToken(key: 'token')==null?"":TOKEN=CacheHelper.getStringToken(key: 'token')!;
  await setup();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();


  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations', //
        fallbackLocale: Locale('ar'),
        assetLoader: CodegenLoader(),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            title: 'First Method',

            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              fontFamily: 'cairo',
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home:
            CacheHelper.getStringToken(key: 'token')==null?SpashScreen():BlocProvider(
              create: (BuildContext context) => getIt<DoctorHomeCubit>()..getAllDocs(),
              child: HomePage(),
            ),
          );
        }
    );
  }
}