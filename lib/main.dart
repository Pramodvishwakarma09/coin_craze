import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:project_stucture/routes/app_routes.dart';
import 'package:project_stucture/view/pages/dashboard_page.dart';
import 'package:project_stucture/view/pages/login/login_chosse_email_and_google_page.dart';
import 'package:project_stucture/view/pages/splash/splash_page.dart';
import 'package:project_stucture/view/pages/unknown_page.dart';
import 'package:project_stucture/view/test/test.dart';
import 'consts/app_colors.dart';
import 'consts/text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("$width + $height");
    return  ScreenUtilInit(
        designSize: const Size(346.97, 750.79),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            unknownRoute: GetPage(name : "/unknown", page : ()=> UnKnownPage() ),
            getPages: GetAppRoutes().getRoutes(),
            theme: ThemeData(
              textTheme: textTheme,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              scaffoldBackgroundColor: colors.primary,
              appBarTheme: AppBarTheme(
                elevation: 0,
                backgroundColor: colors.primary,
              ),
              useMaterial3: true,
            ),
            home: SplashPage(),
          );

        });
  }
}
