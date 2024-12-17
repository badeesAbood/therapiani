import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_reminder_model.g.dart';
@JsonSerializable()
class CreateReminderModel {
  CreateReminderModel(
      {required this.status, required this.repeat, required this.time});

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'repeat')
  final String repeat;

  @JsonKey(name: 'time')
  final DateTime time;


  Map<String , dynamic> toJson() => _$CreateReminderModelToJson(this);
}
