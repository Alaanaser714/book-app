// ignore_for_file: use_build_context_synchronously

import 'package:book_app/core/utils/images_app.dart';
import 'package:book_app/core/routes/routes_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'slider_test.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;

  @override
  void initState() {
    sliderAnimationmethod();
    navigationMethod();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            ImagesApp.splashImages,
          ),
          SliderText(sliderAnimation: sliderAnimation)
        ],
      ),
    );
  }

  void navigationMethod() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).push(RoutesApp.homeScreen);
    });
  }

  void sliderAnimationmethod() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    sliderAnimation = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }
}
