import 'package:bloc/bloc.dart';
import 'package:therapiani/features/authintecation/data/models/usecases_models/login_request_model.dart';
import 'package:therapiani/features/authintecation/data/models/usecases_models/signup_request_model.dart';
import 'package:therapiani/features/authintecation/domain/use_cases/login_usecase.dart';
import 'package:therapiani/features/authintecation/domain/use_cases/refresh_token_usecase.dart';
import 'package:therapiani/features/authintecation/domain/use_cases/signup_usecase.dart';
import 'package:therapiani/features/authintecation/presentation/manager/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {

  AuthCubit(this._loginUseCase, this._refreshTokenUseCase, this._signUpUseCase)
      : super(const AuthState.initial());


  final LoginUseCase _loginUseCase;
  final RefreshTokenUseCase _refreshTokenUseCase;
  final SignUpUseCase _signUpUseCase;



  Future<void> login(LoginRequestModel request ) async {
    emit(const AuthState.loginLoading());
    final result = await  _loginUseCase(request) ;
    result.fold(
      (error) => emit(AuthState.loginFailed(error.message)),
      (data) => emit(AuthState.loginSuccess(data)),
    );
  }

  Future<void> signUp(SingUpRequestModel request ) async {
    emit(const AuthState.signupLoading());
    final result = await  _signUpUseCase(request) ;
    result.fold(
      (error) => emit(AuthState.signupFailed(error.message)),
      (data) => emit(AuthState.signupSuccess(data)),
    );
  }


Future<void> refreshToken() async {
    emit(const AuthState.refreshTokenLoading());
    final result = await  _refreshTokenUseCase() ;
    result.fold(
      (error) => emit(AuthState.refreshTokenFailed(error.message)),
      (data) => emit(AuthState.refreshTokenSuccess(data)),
    );
  }
}
