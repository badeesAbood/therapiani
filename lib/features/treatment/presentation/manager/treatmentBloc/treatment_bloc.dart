import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/features/treatment/data/models/usecases_models/usecase_requsts.dart';
import 'package:my_app/features/treatment/domain/use_cases/add_treatement.dart';
import 'package:my_app/features/treatment/domain/use_cases/delete_treatment.dart';
import 'package:my_app/features/treatment/domain/use_cases/fetch_treatments_usecase.dart';
import 'package:my_app/features/treatment/domain/use_cases/update_treatment.dart';
import 'package:my_app/features/treatment/presentation/manager/treatmentBloc/treatment_state.dart';

@Injectable()
class TreatmentCubit extends Cubit<TreatmentState> {
  TreatmentCubit(super.initialState,
      {required AddTreatmentUsecase addUsecase,
      required FetchTreatmentsUseCase fetchUsecase,
      required UpdateTreatmentUsecase updateUsecase,
      required DeleteTreatmentUseCase deleteUsecase}) {
    _updateTreatmentUsecase = updateUsecase;
    _addTreatmentUsecase = addUsecase;
    _fetchTreatmentsUseCase = fetchUsecase;
    _deleteTreatmentUseCase = deleteUsecase;
  }

  late final AddTreatmentUsecase _addTreatmentUsecase;
  late final FetchTreatmentsUseCase _fetchTreatmentsUseCase;
  late final UpdateTreatmentUsecase _updateTreatmentUsecase;
  late final DeleteTreatmentUseCase _deleteTreatmentUseCase;

  Future<void> fetchTreatments() async {
    emit(TreatmentState.fetchLoading());
    final result = await _fetchTreatmentsUseCase();
    result.fold(
      (l) => emit(TreatmentState.fetchFailed(message: l.message)),
      (r) => emit(TreatmentState.fetchSuccess(treatments: r)),
    );
  }

  Future<void> addTreatment({required CreateTreatmentModel treatment}) async {
    emit(TreatmentState.addLoading());
    final result = await _addTreatmentUsecase(treatment);
    result.fold(
      (l) => emit(TreatmentState.addFailed(message: l.message)),
      (r) => TreatmentState.addSuccess(treatment: r),
    );
  }

  Future<void> updateTreatment(
      {required UpdateTreatmentModel treatment}) async {
    emit(TreatmentState.updateLoading());
    final result = await _updateTreatmentUsecase(treatment);
    result.fold(
      (l) => emit(TreatmentState.updateFailed(message: l.message)),
      (r) => emit(TreatmentState.updateSuccess(treatment: r)),
    );
  }

  Future<void> deleteTreatment({required int id}) async {
    emit(TreatmentState.deleteLoading());
    final result = await _deleteTreatmentUseCase(id: id);
    result.fold(
      (l) => emit(TreatmentState.deleteFailed(message: l.message)),
      (r) => emit(TreatmentState.deleteSuccess(message: r)),
    );
  }
}
