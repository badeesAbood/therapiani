




import 'package:json_annotation/json_annotation.dart';
import 'package:my_app/core/entity/base_entity.dart';
import 'package:my_app/features/treatment/domain/entities/treatment_entity.dart';

abstract class TreatmentListEntity extends BaseEntity<TreatmentListEntity> {

  TreatmentListEntity({required this.treatments}) ;

  @JsonKey(name: 'meds')
  final List<TreatmentEntity> treatments ;

}