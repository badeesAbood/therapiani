




import 'package:json_annotation/json_annotation.dart';
import 'package:therapiani/core/entity/base_entity.dart';
import 'package:therapiani/features/treatment/domain/entities/treatment_entity.dart';

abstract class TreatmentListEntity extends BaseEntity{

  TreatmentListEntity({required this.treatments}) ;

  @JsonKey(name: 'meds')
  final List<TreatmentEntity> treatments ;

}