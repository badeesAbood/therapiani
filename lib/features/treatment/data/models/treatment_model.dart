import 'package:json_annotation/json_annotation.dart';
import 'package:therapiani/core/models/inventory_list_model.dart';
import 'package:therapiani/features/treatment/domain/entities/treatment_entity.dart';

part 'treatment_model.g.dart';

@JsonSerializable()
class TreatmentModel extends TreatmentEntity {
  TreatmentModel(
      {required super.name,
      required super.dose,
      required this.inventoryList,
      required super.description,
      required super.frequency,
      required super.startAt,
      required super.endAt}): super(inventoryList: inventoryList);


  @override
  final InventoryListModel inventoryList;

  factory TreatmentModel.fromJson(Map<String, dynamic> json) =>
      _$TreatmentModelFromJson(json);

  @override
  TreatmentEntity fromJson(Map<String, dynamic> json) =>
      _$TreatmentModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TreatmentModelToJson(this);
}
