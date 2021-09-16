import 'package:app_filmes_dart_week_4_edicao/repositories/login/login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './login_service.dart';

class LoginServiceImpl implements LoginService {
  LoginRepository _loginRepository;

  LoginServiceImpl({required LoginRepository loginRepository})
      : this._loginRepository = loginRepository;

  @override
  Future<UserCredential> login() => _loginRepository.login();

  @override
  Future<void> logout() => _loginRepository.logout();
}
