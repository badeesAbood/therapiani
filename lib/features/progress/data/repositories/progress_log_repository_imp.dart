import 'package:therapiani/core/repositories/core_repository.dart';
import 'package:therapiani/features/progress/data/data_sources/remote_data_source.dart';
import 'package:therapiani/features/progress/domain/entities/progress_log_list_entity.dart';
import 'package:therapiani/features/progress/domain/repositories/progress_log_repository.dart';

class ProgressLosRepositoryImp extends ProgressLogRepository {
  ProgressLosRepositoryImp({required RemoteDataSource remoteSource})
      : _remoteSource = remoteSource;
  final RemoteDataSource _remoteSource;

  @override
  RepoResponse<ProgressLogListEntity> fetchLogs() {
    return repoCallBack(_remoteSource.fetchLogs);
  }


}
