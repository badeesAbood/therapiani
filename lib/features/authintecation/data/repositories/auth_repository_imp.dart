



import 'package:injectable/injectable.dart';
import 'package:therapiani/core/repositories/core_repository.dart';
import 'package:therapiani/features/authintecation/data/data_sources/auth_remote_data_source.dart';
import 'package:therapiani/features/authintecation/data/models/usecases_models/login_request_model.dart';
import 'package:therapiani/features/authintecation/data/models/usecases_models/signup_request_model.dart';
import 'package:therapiani/features/authintecation/domain/entities/auth_entity.dart';
import 'package:therapiani/features/authintecation/domain/entities/signup_entity.dart';
import 'package:therapiani/features/authintecation/domain/repositories/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImp extends AuthRepository {

  AuthRepositoryImp(this._source);
  final AuthRemoteDataSource _source ;

  @override
  RepoResponse<void> logout() async {
    return repoCallBack(_source.logout,) ;
  }


  @override
  RepoResponse<AuthEntity> login(LoginRequestModel request) {
    return repoCallBack(() => _source.login(request.toJson())) ;
  }

  @override
  RepoResponse<AuthEntity> refreshToken() {
    return repoCallBack(_source.refreshToken) ;
  }


  @override
  RepoResponse<SignUpEntity> signUp(SingUpRequestModel request) {
    return repoCallBack(() => _source.signUp(request.toJson())) ;
  }




}