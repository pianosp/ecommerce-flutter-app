import 'package:ecommerce_flutter_app/src/pages/routes.dart';
import 'package:ecommerce_flutter_app/src/pages/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../main.dart';
import 'bloc/welcome/welcome_bloc.dart';

final navigatorState = GlobalKey<
    NavigatorState>(); //ประกาศใช้งาน ให้สามารถใช้งาน context ที่ใดก็ได้เพราะประกาศเป็น global

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final welcomeBloc = BlocProvider(create: (context) => WelcomeBloc());
    return MultiBlocProvider(
      providers: [welcomeBloc],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              appBarTheme:
                  AppBarTheme(elevation: 0, backgroundColor: Colors.white)),
          home: WelcomePage(),
          routes: AppRoute.all,
          navigatorKey: navigatorState,
        ),
      ),
    );
  }
}
