

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/core/entity/base_entity.dart';

abstract class SignUpEntity extends BaseEntity {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'confirm_password')
  final String confirmPassword;

  SignUpEntity(this.name, this.email,
      {required this.password, required this.confirmPassword});

}