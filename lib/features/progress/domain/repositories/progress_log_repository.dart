import 'package:dartz/dartz.dart';
import 'package:therapiani/core/repositories/core_repository.dart';
import 'package:therapiani/core/services/network_service/failure/failure.dart';
import 'package:therapiani/features/progress/domain/entities/progress_log_list_entity.dart';

abstract class ProgressLogRepository extends CoreRepository {
  Future<Either<Failure, ProgressLogListEntity>> fetchLogs();
}
