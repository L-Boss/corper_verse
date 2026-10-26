import 'package:corper_verse/core/route/paths.dart';
import 'package:corper_verse/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CorperVerse extends StatelessWidget {
  const CorperVerse({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        initialRoute: Paths.SPLASH,
        getPages: Pages.routes,
        //initialBinding: InitialBinding(),
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fade,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
