import 'package:book_app/core/routes/routes_app.dart';
import 'package:book_app/features/splash/presentation/views/splash_screen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: RoutesApp.splashScreen,
    page: () => SplashScreen(),
  )
];
