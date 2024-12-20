

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:therapiani/core/entity/string_response_entity.dart';
import 'package:therapiani/core/services/network_service/failure/failure.dart';
import 'package:therapiani/features/treatment/domain/repositories/treatment_repo.dart';

@Injectable()
class DeleteTreatmentUseCase {
  DeleteTreatmentUseCase({required TreatmentRepository repo}) : _repo = repo;
  late final TreatmentRepository _repo;


  Future<Either<Failure, StringResponseEntity>> call({required int id }) async {
    return  _repo.deleteTreatment(id: id) ;
  }
}
