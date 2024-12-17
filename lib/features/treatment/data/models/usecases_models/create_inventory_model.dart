import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_inventory_model.g.dart';
@JsonSerializable()
class CreateInventoryModel {
  CreateInventoryModel({required this.quantity, required this.threshold});

  @JsonKey(name: 'quantity')
  final int quantity;

  @JsonKey(name: 'threshold')
  final int threshold;


  Map<String , dynamic> toJson() => _$CreateInventoryModelToJson(this) ;
}
