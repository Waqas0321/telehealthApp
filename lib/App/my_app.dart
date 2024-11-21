import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AppRoutes/app_routes.dart';
import 'Bindings/app_binding.dart';
import 'Utils/Theme/app_theme.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "TeleHealth",
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      initialRoute: AppRoutes.welcomeScreen,
      getPages: AppRoutes.routes,
    );
  }
}