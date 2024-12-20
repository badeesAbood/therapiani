import 'package:therapiani/core/entity/string_response_entity.dart';
import 'package:therapiani/core/services/network_service/http_service/dio_client.dart';
import 'package:therapiani/core/services/network_service/http_service/http_helper.dart';
import 'package:therapiani/features/authintecation/domain/entities/auth_entity.dart';
import 'package:therapiani/features/authintecation/domain/entities/signup_entity.dart';

class AuthRemoteDataSource {
  final DioClient _client;

  AuthRemoteDataSource(this._client);

  Future<AuthEntity> login(Map<String, dynamic> data) async {
    try {
      final response = await _client
          .request<AuthEntity>(url: '/login', method: Method.POST, headers: {} , data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await _client.request<StringResponseEntity>(url: '/logout', method: Method.POST, headers: {});
    } catch (e) {
      rethrow;
    }
  }

  Future<AuthEntity> refreshToken() async {
    try {
      final response = await _client
          .request<AuthEntity>(url: '/refresh-token', method: Method.POST, headers: {});
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<SignUpEntity> signUp(Map<String , dynamic> data) async {
    try {
      final response = await _client
          .request<SignUpEntity>(url: '/signup', method: Method.POST, headers: {} , data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }



}
