import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/core/entity/base_entity.dart';

abstract class AuthEntity extends BaseEntity {
  @JsonKey(name: 'token')
  final String token;
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'email')
  final String? email;

  AuthEntity(this.id, this.name, this.email,
      {required this.token, required this.refreshToken});

}
