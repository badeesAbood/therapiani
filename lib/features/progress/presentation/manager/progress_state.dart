import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/features/progress/domain/entities/progress_log_entity.dart';
import 'package:therapiani/features/progress/domain/entities/progress_log_list_entity.dart';

part 'progress_state.freezed.dart';

@freezed
class ProgressState with _$ProgressState {
  factory ProgressState.fetchSuccess({required ProgressLogListEntity model}) =
      _fetchSuccess;

  factory ProgressState.fetchFailed({required String message}) = _fetchFailed;

  factory ProgressState.fetchLoading() = _fetchLoading;

  factory ProgressState.initial() = _initial;

  factory ProgressState.updateSuccess({required ProgressLogEntity model}) =
      _updateSuccess;

  factory ProgressState.updateFailed({required String message}) = _updateFailed;

  factory ProgressState.updateLoading() = _updateLoading;
}
