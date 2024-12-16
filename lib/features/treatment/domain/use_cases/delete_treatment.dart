

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/core/services/network_service/failure/failure.dart';
import 'package:my_app/features/treatment/domain/entities/treatment_list_entity.dart';
import 'package:my_app/features/treatment/domain/repositories/treatment_repo.dart';

@Injectable()
class DeleteTreatmentUseCase {
  DeleteTreatmentUseCase({required TreatmentRepository repo}) : _repo = repo;
  late final TreatmentRepository _repo;


  Future<Either<Failure, String>> call({required int id }) async {
    return  _repo.deleteTreatment(id: id) ;
  }
}
