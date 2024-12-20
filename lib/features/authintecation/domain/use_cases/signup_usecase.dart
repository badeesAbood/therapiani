


import 'package:dartz/dartz.dart';
import 'package:therapiani/core/services/network_service/failure/failure.dart';
import 'package:therapiani/features/authintecation/data/models/usecases_models/signup_request_model.dart';
import 'package:therapiani/features/authintecation/domain/entities/signup_entity.dart';
import 'package:therapiani/features/authintecation/domain/repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository repository;

  SignUpUseCase(this.repository);

  Future<Either<Failure, SignUpEntity>> call(SingUpRequestModel request) async {
    return  repository.signUp(request);
  }
}