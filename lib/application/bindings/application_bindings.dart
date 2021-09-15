import 'package:app_filmes_dart_week_4_edicao/repositories/login/login_repository.dart';
import 'package:app_filmes_dart_week_4_edicao/repositories/login/login_repository_impl.dart';
import 'package:app_filmes_dart_week_4_edicao/services/login/login_service.dart';
import 'package:app_filmes_dart_week_4_edicao/services/login/login_service_impl.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    Get.lazyPut<LoginService>(
      () => LoginServiceImpl(loginRepository: Get.find()),
      fenix: true,
    );
  }
}
