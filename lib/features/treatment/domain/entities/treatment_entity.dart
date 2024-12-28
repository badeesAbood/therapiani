
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/core/entity/entity.dart';

abstract class TreatmentEntity extends BaseEntity {
  TreatmentEntity(
      {required this.name,
      required this.dose,
      required this.inventoryList,
      required this.description,
      required this.frequency,
      required this.startAt,
      required this.endAt});

  @JsonKey(name: 'naem')
  final String name;

  final String dose;

  final String description;

  final String frequency;

  final DateTime startAt;

  final DateTime endAt;

  final InventoryListEntity inventoryList;
}
