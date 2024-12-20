



import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/core/entity/base_entity.dart';

abstract class ProgressLogEntity extends BaseEntity {
  ProgressLogEntity(
      {required this.date,
        required this.createdAt,
        required this.updatedAt,
        required this.status,
        required this.medicationId,
        required this.id});

  @JsonKey(name: 'date')
  final DateTime date;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'medication_id')
  final int medicationId;
  @JsonKey(name: 'id')
  final int id;
}