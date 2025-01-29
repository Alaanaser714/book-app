import 'package:book_app/core/services/api_services.dart';
import 'package:book_app/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  void setUpServicesLocator() {
    getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
    getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
      getIt.get<ApiServices>(),
    ));
  }
}
