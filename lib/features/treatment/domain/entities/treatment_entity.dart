import 'package:json_annotation/json_annotation.dart';

import 'package:my_app/core/entity/base_entity.dart';


abstract class TreatmentEntity extends BaseEntity<TreatmentEntity> {
  TreatmentEntity(
      {required this.name,
      required this.dose,
      required this.description,
      required this.frequency,
      required this.startAt,
      required this.endAt});

  final String name;

  final String dose;

  final String description;

  final String frequency;

  final DateTime startAt;

  final DateTime endAt;


}