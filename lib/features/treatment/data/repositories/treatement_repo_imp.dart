import 'package:injectable/injectable.dart';
import 'package:my_app/core/repositories/core_repository.dart';
import 'package:my_app/features/treatment/data/data_sources/remote_data_source/remote_data_source.dart';
import 'package:my_app/features/treatment/domain/entities/treatment_entity.dart';
import 'package:my_app/features/treatment/domain/entities/treatment_list_entity.dart';
import 'package:my_app/features/treatment/domain/repositories/treatment_repo.dart';


@Injectable(as: TreatmentRepository)
class TreatmentRepositoryImp extends TreatmentRepository {
  TreatmentRepositoryImp(RemoteDataSource dataSource)
      : _dataSource = dataSource;

  final RemoteDataSource _dataSource;

  @override
  RepoResponse<TreatmentEntity> addTreatment(
      {required TreatmentEntity treatment,}) async {
    return repoCallBack(
      () => _dataSource.addTreatment(treatment: treatment),
    );
  }

  @override
  RepoResponse<String> deleteTreatment({required int id}) {
    return repoCallBack(
      () => _dataSource.deleteTreatment(id: id),
    );
  }

  @override
  RepoResponse<TreatmentListEntity> fetchTreatments() {
    return repoCallBack(
      _dataSource.fetchTreatments,
    );
  }

  @override
  RepoResponse<TreatmentEntity> updateTreatment(
      {required TreatmentEntity treatment}) {
    return repoCallBack(
      () => _dataSource.updateTreatment(treatment: treatment),
    );
  }
}
