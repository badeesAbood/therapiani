import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/features/progress/domain/entities/progress_log_entity.dart';

part 'progress_log_model.g.dart';

@JsonSerializable()
class ProgressLogModel extends ProgressLogEntity {
  ProgressLogModel(
      {required super.date,
      required super.createdAt,
      required super.updatedAt,
      required super.status,
      required super.medicationId,
      required super.id});

  factory ProgressLogModel.fromJson(Map<String, dynamic> json) =>
      _$ProgressLogModelFromJson(json);

  @override
  ProgressLogEntity fromJson(Map<String, dynamic> json) =>
      _$ProgressLogModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProgressLogModelToJson(this);
}
