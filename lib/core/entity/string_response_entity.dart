


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/core/entity/base_entity.dart';

abstract class StringResponseEntity extends BaseEntity {

  StringResponseEntity(this.message);
  @JsonKey(name: 'message')
  final String message ;
}