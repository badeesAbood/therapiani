
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/core/entity/base_entity.dart';
import 'package:my_app/core/entity/entity.dart';

abstract class InventoryListEntity extends BaseEntity<InventoryListEntity> {

  @JsonKey(name: 'inventories' , defaultValue: [])
  final List<InventoryEntity> inventories ;

  InventoryListEntity(this.inventories) ;
}