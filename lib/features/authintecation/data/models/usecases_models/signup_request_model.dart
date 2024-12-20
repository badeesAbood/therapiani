


import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_request_model.g.dart';
@JsonSerializable()
class SingUpRequestModel {
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'confirmPassword')
  final String confirmPassword;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'email')
  final String email;

  SingUpRequestModel({
    required this.password,
    required this.confirmPassword,
    required this.name,
    required this.email,
  });

  factory SingUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SingUpRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$SingUpRequestModelToJson(this);
}