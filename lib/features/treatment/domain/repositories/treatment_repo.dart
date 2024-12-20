import 'package:dartz/dartz.dart';
import 'package:therapiani/core/entity/string_response_entity.dart';
import 'package:therapiani/core/repositories/core_repository.dart';
import 'package:therapiani/core/services/network_service/failure/failure.dart';
import 'package:therapiani/features/treatment/data/models/usecases_models/usecase_requsts.dart';
import 'package:therapiani/features/treatment/domain/entities/treatment_entity.dart';
import 'package:therapiani/features/treatment/domain/entities/treatment_list_entity.dart';

abstract class TreatmentRepository extends CoreRepository {
  Future<Either<Failure, TreatmentEntity>> addTreatment(
      {required CreateTreatmentModel treatment});

  Future<Either<Failure, TreatmentListEntity>> fetchTreatments();

  Future<Either<Failure, TreatmentEntity>> updateTreatment(
      {required UpdateTreatmentModel treatment});

  Future<Either<Failure, StringResponseEntity>> deleteTreatment({required int id});
}
