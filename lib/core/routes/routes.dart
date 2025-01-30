import 'package:book_app/core/routes/routes_app.dart';
import 'package:book_app/features/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/home_screen.dart';
import '../../features/search/presentation/view/search_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RoutesApp.searchScreen,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: RoutesApp.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
