import 'package:book_app/core/routes/routes_app.dart';
import 'package:book_app/features/splash/presentation/views/splash_screen.dart';
import 'package:get/get.dart';
import '../../features/home/presentation/views/home_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: RoutesApp.splashScreen,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: RoutesApp.homeScreen,
    page: () => HomeScreen(),
  )
];
