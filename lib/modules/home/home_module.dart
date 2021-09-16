import 'package:app_filmes_dart_week_4_edicao/application/modules/module.dart';
import 'package:app_filmes_dart_week_4_edicao/modules/home/home_bindings.dart';
import 'package:app_filmes_dart_week_4_edicao/modules/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routes = [
    GetPage(
      name: '/home',
      page: () => HomePage(),
      binding: HomeBindings(),
    )
  ];
}
