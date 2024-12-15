import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/core/services/network_service/failure/failure.dart';
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
  Future<Either<Failure, TreatmentEntity>> addTreatment(
      {required TreatmentEntity treatment}) async {
    return repoCallBack<TreatmentEntity>(
      () => _dataSource.addTreatment(treatment: treatment),
    );
  }

  @override
  Future<Either<Failure, String>> deleteTreatment({required int id}) {
    return repoCallBack<String>(
      () => _dataSource.deleteTreatment(id: id),
    );
  }

  @override
  Future<Either<Failure, TreatmentListEntity>> fetchTreatments() {
    return repoCallBack<TreatmentListEntity>(
      _dataSource.fetchTreatments,
    );
  }

  @override
  Future<Either<Failure, TreatmentEntity>> updateTreatment(
      {required TreatmentEntity treatment}) {
    return repoCallBack(
      () => _dataSource.updateTreatment(treatment: treatment),
    );
  }
}
