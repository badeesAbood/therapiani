import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/features/treatment/domain/entities/treatment_entity.dart';
import 'package:therapiani/features/treatment/domain/entities/treatment_list_entity.dart';

part 'treatment_state.freezed.dart';

@freezed
class TreatmentState with _$TreatmentState {

  factory TreatmentState.initial() = _initial ;
  factory TreatmentState.addSuccess({required TreatmentEntity treatment}) =
      _addSuccess;

  factory TreatmentState.addFailed({required String message}) = _addFailed;

  factory TreatmentState.addLoading() = _addLoading;

  factory TreatmentState.fetchSuccess(
      {required TreatmentListEntity treatments}) = _fetchSuccess;

  factory TreatmentState.fetchFailed({required String message}) = _fetchFailed;

  factory TreatmentState.fetchLoading() = _fetchLoading;

  factory TreatmentState.deleteSuccess({required String message}) =
      _deleteSuccess;

  factory TreatmentState.deleteFailed({required String message}) =
      _deleteFailed;

  factory TreatmentState.deleteLoading() = _deleteLoading;

  factory TreatmentState.updateSuccess({required TreatmentEntity treatment}) =
      _updateSuccess;

  factory TreatmentState.updateFailed({required String message}) =
      _updateFailed;

  factory TreatmentState.updateLoading() = _updateLoading;
}
