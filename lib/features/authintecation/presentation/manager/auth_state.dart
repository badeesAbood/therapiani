


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/features/authintecation/domain/entities/auth_entity.dart';
import 'package:therapiani/features/authintecation/domain/entities/signup_entity.dart';

part 'auth_state.freezed.dart';
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _initial;
  const factory AuthState.loginLoading() = _loginLoading;
  const factory AuthState.loginSuccess(AuthEntity model) = _loginSuccess;
  const factory AuthState.loginFailed(String message) = _loginFailed;

  const factory AuthState.signupLoading() = _signupLoading;
  const factory AuthState.signupSuccess(SignUpEntity model) = _signupSuccess;
  const factory AuthState.signupFailed(String message) = _signupFailed;

  const factory AuthState.refreshTokenLoading() = _refreshTokenLoading;
  const factory AuthState.refreshTokenSuccess(AuthEntity auth) = _refreshTokenSuccess;
  const factory AuthState.refreshTokenFailed(String message) = _refreshTokenFailed;

  const factory AuthState.logout() = _logout;
}