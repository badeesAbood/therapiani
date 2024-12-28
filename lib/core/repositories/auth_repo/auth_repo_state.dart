



import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_repo_state.freezed.dart';
@freezed
class AuthRepositoryState with _$AuthRepositoryState {
  const factory AuthRepositoryState.initial() = _Initial;
  const factory AuthRepositoryState.authenticated() = _Authenticated;
  const factory AuthRepositoryState.unauthenticated() = _Unauthenticated;
  const factory AuthRepositoryState.loading() = _Loading;
  const factory AuthRepositoryState.error(String message) = _Error;
}
