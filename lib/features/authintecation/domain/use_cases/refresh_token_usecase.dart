


import 'package:dartz/dartz.dart';
import 'package:therapiani/core/services/network_service/failure/failure.dart';
import 'package:therapiani/features/authintecation/domain/entities/auth_entity.dart';
import 'package:therapiani/features/authintecation/domain/repositories/auth_repository.dart';

class RefreshTokenUseCase {
  final AuthRepository repository;

  RefreshTokenUseCase(this.repository);
  Future<Either<Failure, AuthEntity>> call() async {
    return repository.refreshToken();
  }
}