



import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:my_app/core/services/network_service/exception/network_exceptions.dart';
import 'package:my_app/core/services/network_service/failure/failure.dart';
import 'package:my_app/core/services/network_service/failure/network_failure.dart';

typedef RepoResponse<T> = Future<Either<Failure, T>>;


class CoreRepository {
  RepoResponse<T> repoCallBack<T>(Future<T> Function() action) async {
    try {
      final result = await action() ;
      return Right(result) ;
    }on NetworkException catch (e) {
      return Left(handleExceptionsToFailures(e)) ;
    }
  }

  Failure handleExceptionsToFailures(NetworkException e) {
    switch(e.runtimeType) {
      case NetworkException:
        return NetworkFailure(message: e.message) ;
      default:
        return NetworkFailure(message: e.message) ;
    }
  }
}