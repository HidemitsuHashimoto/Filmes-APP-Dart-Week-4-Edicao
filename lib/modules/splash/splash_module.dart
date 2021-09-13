import 'package:app_filmes_dart_week_4_edicao/application/modules/module.dart';
import 'package:app_filmes_dart_week_4_edicao/modules/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule extends Module {
  @override
  List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
    )
  ];
}
