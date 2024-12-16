import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/core/entity/base_entity.dart';

abstract class InventoryEntity extends BaseEntity<InventoryEntity> {

  InventoryEntity({required this.quantity, required this.threshold});

  @JsonKey(name: 'quantity' ,  defaultValue: 0)
  final int quantity;

  @JsonKey(name: 'threshold', defaultValue: 0)
  final int threshold;
}
