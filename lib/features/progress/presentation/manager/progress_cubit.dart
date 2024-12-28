import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:therapiani/features/progress/domain/use_cases/fetch_progress_log_usecase.dart';
import 'package:therapiani/features/progress/presentation/manager/progress_state.dart';

@Injectable()
class ProgressCubit extends Cubit<ProgressState> {
  ProgressCubit(
      {required FetchProgressLogUsecase fetchProgressLogsUsecase,})
      : super(ProgressState.initial()) {
    _fetchProgressLogUsecase = fetchProgressLogsUsecase;
  }

  late final FetchProgressLogUsecase _fetchProgressLogUsecase;

  Future<void> fetchLogs() async {
    emit(ProgressState.fetchLoading());

    final result = await _fetchProgressLogUsecase();

    result.fold((l) => emit(ProgressState.fetchFailed(message: l.message)),
        (r) => ProgressState.fetchSuccess(model: r));
  }

}
