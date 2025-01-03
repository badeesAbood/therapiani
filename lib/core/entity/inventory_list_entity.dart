
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/core/entity/base_entity.dart';
import 'package:therapiani/core/entity/entity.dart';

abstract class InventoryListEntity extends BaseEntity {

  @JsonKey(name: 'inventories' , defaultValue: [])
  final List<InventoryEntity> inventories ;

  InventoryListEntity(this.inventories) ;
}