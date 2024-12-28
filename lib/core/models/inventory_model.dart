import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/core/entity/entity.dart';

part 'inventory_model.g.dart';

@JsonSerializable()
class InventoryModel extends InventoryEntity {
  InventoryModel({required super.quantity, required super.threshold});

  factory InventoryModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryModelFromJson(json);

  @override
  InventoryEntity fromJson(Map<String, dynamic> json) =>
      _$InventoryModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InventoryModelToJson(this);
}
