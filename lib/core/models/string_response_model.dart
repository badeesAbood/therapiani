import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:therapiani/core/entity/string_response_entity.dart';

part 'string_response_model.g.dart';

@JsonSerializable()
class StringResponseModel extends StringResponseEntity {
  StringResponseModel(super.message);

  factory StringResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StringResponseModelFromJson(json);

  @override
  StringResponseEntity fromJson(Map<String, dynamic> json) =>
      _$StringResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StringResponseModelToJson(this);
}
