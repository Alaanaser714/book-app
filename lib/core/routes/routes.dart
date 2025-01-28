import 'package:book_app/core/routes/routes_app.dart';
import 'package:book_app/features/splash/presentation/views/splash_screen.dart';
import 'package:get/get.dart';
import '../../features/home/presentation/views/book_details.dart';
import '../../features/home/presentation/views/home_screen.dart';
import '../../features/search/presentation/view/search_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: RoutesApp.splashScreen,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: RoutesApp.homeScreen,
    page: () => HomeScreen(),
  ),
  GetPage(
    name: RoutesApp.bookDetails,
    page: () => BookDetails(),
  ),
  GetPage(
    name: RoutesApp.searchScreen,
    page: () => SearchScreen(),
  ),
];
