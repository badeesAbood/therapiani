import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/core/entity/base_entity.dart';
import 'package:therapiani/features/progress/domain/entities/progress_log_entity.dart';

abstract class ProgressLogListEntity extends BaseEntity {
  ProgressLogListEntity(
      {required this.logs});

  @JsonKey(name: 'logs' , defaultValue: [])
  final List<ProgressLogEntity> logs ;
}
