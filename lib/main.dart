import 'package:book_app/core/constants/colors_app.dart';
import 'package:book_app/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorsApp.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      getPages: routes,
    );
  }
}
