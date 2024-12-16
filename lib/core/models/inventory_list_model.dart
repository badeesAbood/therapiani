


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/core/entity/entity.dart';
import 'package:my_app/core/models/inventory_model.dart';

part 'inventory_list_model.g.dart';

@JsonSerializable()
class InventoryListModel extends InventoryListEntity {


  InventoryListModel(this.inventories) : super(inventories);


  @override
  final List<InventoryModel> inventories ;

  factory InventoryListModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryListModelFromJson(json);

  @override
  InventoryListEntity fromJson(Map<String, dynamic> json) =>
      _$InventoryListModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InventoryListModelToJson(this);
}
