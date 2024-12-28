import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:therapiani/core/services/network_service/exception/network_exceptions.dart';
import 'package:therapiani/core/services/network_service/exception/services_exceptions.dart';
import 'package:therapiani/core/services/network_service/failure/dio_failures.dart';
import 'package:therapiani/core/services/network_service/failure/failure.dart';
import 'package:therapiani/core/services/network_service/failure/service_failures.dart';

typedef RepoResponse<T> = Future<Either<Failure, T>>;

class CoreRepository {



  RepoResponse<T> repoCallBack<T>(Future<T> Function() action) async {
    try {
      final result = await action();


      return Right(result);
    } on NetworkException catch (e) {
      final _failure = handleExceptionsToFailures(e);
      return Left(_failure);
      } on ServicesException catch (e)
      {
        return Left(handleExceptionsToFailures(e));
      } catch (e) {
      return Left(UnexpectedFailure(e.toString()));
    }
  }

  Failure handleExceptionsToFailures(Exception e) {
    switch (e.runtimeType) {
      case ConnectionTimeoutException:
        return ConnectionTimeoutFailure();
      case SendTimeoutException:
        return SendTimeoutFailure();
      case ReceiveTimeoutException:
        return ReceiveTimeoutFailure();
      case InvalidResponseException:
        return InvalidResponseFailure(
            (e as InvalidResponseException).statusCode);
      case RequestCancelledException:
        return RequestCancelledFailure();
      case UnexpectedException:
        return UnexpectedFailure((e as UnexpectedException).message);
      case JsonConversionException:
        return JsonParsingFailure();
      case UnauthorizedException:
        return UnauthorizedFailure();
      default:
        return UnexpectedFailure(e.toString());
    }
  }
}