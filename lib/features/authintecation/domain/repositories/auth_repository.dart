
import 'package:therapiani/core/repositories/core_repository.dart';
import 'package:therapiani/features/authintecation/data/models/usecases_models/login_request_model.dart';
import 'package:therapiani/features/authintecation/data/models/usecases_models/signup_request_model.dart';
import 'package:therapiani/features/authintecation/domain/entities/auth_entity.dart';
import 'package:therapiani/features/authintecation/domain/entities/signup_entity.dart';

abstract class AuthRepository extends CoreRepository {
 RepoResponse<AuthEntity> login(LoginRequestModel request) ;
 RepoResponse<SignUpEntity> signUp(SingUpRequestModel request) ;
 RepoResponse<void> logout() ;
  RepoResponse<AuthEntity> refreshToken() ;
}