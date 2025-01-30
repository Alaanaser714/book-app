import 'package:book_app/core/utils/colors_app.dart';
import 'package:book_app/features/home/presentation/viewmodel/cubits/featured_book_cuibt/featured_book_cuibt.dart';
import 'package:book_app/features/home/presentation/viewmodel/cubits/newest_book/newest_book_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/routes/routes.dart';
import 'core/utils/services_locator.dart';
import 'features/home/data/repo/home_repo_impl.dart';

void main() {
  ServicesLocator().setUpServicesLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCuibt(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ColorsApp.primaryColor,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
