import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:therapiani/core/services/network_service/failure/failure.dart';
import 'package:therapiani/features/treatment/data/models/usecases_models/create_treatment_model.dart';
import 'package:therapiani/features/treatment/domain/entities/treatment_entity.dart';
import 'package:therapiani/features/treatment/domain/repositories/treatment_repo.dart';

@Injectable()
class AddTreatmentUsecase {
  AddTreatmentUsecase({required TreatmentRepository repo}) : _repo = repo;

  final TreatmentRepository _repo;

  Future<Either<Failure, TreatmentEntity>> call(
      CreateTreatmentModel treatment) async {
    return _repo.addTreatment(treatment: treatment);
  }
}
