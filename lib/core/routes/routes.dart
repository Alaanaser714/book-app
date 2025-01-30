import 'package:book_app/core/routes/routes_app.dart';
import 'package:book_app/core/utils/services_locator.dart';
import 'package:book_app/features/home/data/models/book2_model.dart';
import 'package:book_app/features/home/presentation/viewmodel/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_app/features/home/presentation/views/book_details.dart';
import 'package:book_app/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/data/repo/home_repo_impl.dart';
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
      GoRoute(
        path: RoutesApp.bookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetails(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
