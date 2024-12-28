import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:therapiani/core/repositories/auth_repo/auth_repo_state.dart';
import 'package:therapiani/core/utils/storage/app_storage.dart';
import 'package:therapiani/di.dart';

@LazySingleton()
class AuthRepository extends Cubit<AuthRepositoryState> {

  AuthRepository(this._storage) : super(const AuthRepositoryState.initial());
  late final AppStorage _storage;

  late final Dio _dio;

  void init(Dio dio) {
    _dio = dio;
  }

  Future<void> login(String email, String password) async {
    emit(const AuthRepositoryState.loading());
    try {
      final response = await _dio.post<String>(
        'auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        await _storage.setAccessToken(response.data![0]);
        await _storage.setRefreshToken(response.data![1]);

        _dio.options.headers['Authorization'] = 'Bearer ${response.data![0]}';

        emit(const AuthRepositoryState.authenticated());
      } else {
        emit(const AuthRepositoryState.error('An error occurred'));
      }
    } catch (e) {
      emit(const AuthRepositoryState.error('An error occurred'));
    }
  }

  Future<void> refreshToken() async {
    emit(const AuthRepositoryState.loading());
    try {
      final response = await _dio.post<String>(
        'auth/refresh',
      );
      if (response.statusCode == 200) {
        await _storage.setAccessToken(response.data![0]);

        _dio.options.headers['Authorization'] = 'Bearer ${response.data![0]}';

        emit(const AuthRepositoryState.authenticated());
      } else {
        emit(const AuthRepositoryState.unauthenticated());
      }
    } catch (e) {
      emit(const AuthRepositoryState.unauthenticated());
    }
  }

  void forceLogout() {
    emit(const AuthRepositoryState.unauthenticated());
  }
}
