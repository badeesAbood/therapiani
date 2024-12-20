import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:therapiani/core/services/network_service/failure/failure.dart';
import 'package:therapiani/features/progress/domain/entities/progress_log_list_entity.dart';
import 'package:therapiani/features/progress/domain/repositories/progress_log_repository.dart';

@Injectable()
class FetchProgressLogUsecase {
  FetchProgressLogUsecase({required ProgressLogRepository repo}) : _repo = repo;
  final ProgressLogRepository _repo;

  Future<Either<Failure, ProgressLogListEntity>> call() async {
    return  _repo.fetchLogs();
  }
}
