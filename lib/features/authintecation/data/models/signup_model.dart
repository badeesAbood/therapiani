import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/core/entity/base_entity.dart';
import 'package:therapiani/features/authintecation/domain/entities/signup_entity.dart';

part 'signup_model.g.dart';

@JsonSerializable()
class SignupModel extends SignUpEntity {
  SignupModel({
    required String password,
    required String confirmPassword,
    required String? name,
    required String? email,
  }) : super(
          name,
          email,
          password: password,
          confirmPassword: confirmPassword,
        );

  factory SignupModel.fromJson(Map<String, dynamic> json) => _$SignupModelFromJson(json);


  @override
  Map<String, dynamic> toJson() => _$SignupModelToJson(this);

  @override
  BaseEntity fromJson(Map<String, dynamic> json) => _$SignupModelFromJson(json);
}
