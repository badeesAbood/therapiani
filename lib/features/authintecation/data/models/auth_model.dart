import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/core/entity/base_entity.dart';
import 'package:therapiani/features/authintecation/domain/entities/auth_entity.dart';

part 'auth_model.g.dart';

@JsonSerializable()
class AuthModel extends AuthEntity {
  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  AuthModel({
    required String token,
    required String refreshToken,
    required int? id,
    required String? name,
    required String? email,
  }) : super(
          id,
          name,
          email,
          token: token,
          refreshToken: refreshToken,
        );

  @override
  BaseEntity fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuthModelToJson(this);
}
