import 'package:dartz/dartz.dart';
import 'package:my_app/core/repositories/core_repository.dart';
import 'package:my_app/core/services/network_service/failure/failure.dart';
import 'package:my_app/features/treatment/domain/entities/treatment_entity.dart';
import 'package:my_app/features/treatment/domain/entities/treatment_list_entity.dart';
import 'package:my_app/features/treatment/data/models/usecases_models/usecase_requsts.dart';

abstract class TreatmentRepository extends CoreRepository {
  Future<Either<Failure, TreatmentEntity>> addTreatment(
      {required CreateTreatmentModel treatment});

  Future<Either<Failure, TreatmentListEntity>> fetchTreatments();

  Future<Either<Failure, TreatmentEntity>> updateTreatment(
      {required UpdateTreatmentModel treatment});

  Future<Either<Failure, String>> deleteTreatment({required int id});
}
