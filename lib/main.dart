import 'package:app_filmes_dart_week_4_edicao/application/bindings/application_bindings.dart';
import 'package:app_filmes_dart_week_4_edicao/modules/login/login_module.dart';
import 'package:app_filmes_dart_week_4_edicao/modules/splash/splash_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  RemoteConfig.instance.fetchAndActivate();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: ApplicationBindings(),
      getPages: [
        ...SplashModule().routes,
        ...LoginModule().routes,
      ],
    );
  }
}
