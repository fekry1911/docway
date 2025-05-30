import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/const/const.dart';
import 'core/di/debendency_injection.dart';
import 'core/generated/codegen_loader.g.dart';
import 'core/local_shared/cache_helper.dart';
import 'core/shared/cubit/bloc_obsererer.dart';
import 'features/spalsh/presentation/splash.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  CacheHelper.getString(key: 'token')==null?"":TOKEN=CacheHelper.getString(key: 'token')!;
  await setup();
  await EasyLocalization.ensureInitialized();
  //await CacheHelper.init();
  Bloc.observer = MyBlocObserver();



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
              primaryColorLight: Colors.blue,
              primaryColor: Colors.blue,
              appBarTheme: AppBarTheme(
                scrolledUnderElevation: 0,
                backgroundColor: Colors.white,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
              ),
              scaffoldBackgroundColor: Colors.white,
              fontFamily: 'cairo',
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home:SpashScreen()
            /*CacheHelper.getStringToken(key: 'token')==null?SpashScreen():BlocProvider(
              create: (BuildContext context) => getIt<DoctorHomeCubit>()..getAllDocs(),
              child: HomePage(),
            ),*/
          );
        }
    );
  }
}