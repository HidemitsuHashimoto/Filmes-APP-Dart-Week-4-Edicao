import 'package:app_filmes_dart_week_4_edicao/application/auth/auth_service.dart';
import 'package:app_filmes_dart_week_4_edicao/application/rest_client/rest_client.dart';
import 'package:app_filmes_dart_week_4_edicao/repositories/login/login_repository.dart';
import 'package:app_filmes_dart_week_4_edicao/repositories/login/login_repository_impl.dart';
import 'package:app_filmes_dart_week_4_edicao/repositories/movies/movies_repository.dart';
import 'package:app_filmes_dart_week_4_edicao/repositories/movies/movies_repository_impl.dart';
import 'package:app_filmes_dart_week_4_edicao/services/login/login_service.dart';
import 'package:app_filmes_dart_week_4_edicao/services/login/login_service_impl.dart';
import 'package:app_filmes_dart_week_4_edicao/services/movies_service.dart';
import 'package:app_filmes_dart_week_4_edicao/services/movies_service_impl.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient());

    Get.lazyPut<LoginRepository>(
      () => LoginRepositoryImpl(),
      fenix: true,
    );
    Get.lazyPut<LoginService>(
      () => LoginServiceImpl(loginRepository: Get.find()),
      fenix: true,
    );

    Get.put(AuthService()).init();

    Get.lazyPut<MoviesRepository>(
        () => MoviesRepositoryImpl(restClient: Get.find()));
    Get.lazyPut<MoviesService>(
        () => MoviesServiceImpl(moviesRepository: Get.find()));
  }
}
