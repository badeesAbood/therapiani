import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/features/treatment/data/models/usecases_models/usecase_requsts.dart';


part 'create_treatment_model.g.dart';
@JsonSerializable()
class CreateTreatmentModel {
  CreateTreatmentModel(
      {required this.inventories,
      required this.reminders,
      required this.description,
      required this.dose,
      required this.frequency,
      required this.startAt,
      required this.endAt});

  @JsonKey(name: 'inventories', defaultValue: [])
  final List<CreateInventoryModel> inventories;

  @JsonKey(name: 'reminders', defaultValue: [])
  final List<CreateReminderModel> reminders;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'dose')
  final String dose;

  @JsonKey(name: 'frequency')
  final String frequency;

  @JsonKey(name: 'start_at')
  final DateTime startAt;

  @JsonKey(name: 'end_at')
  final DateTime endAt;

  Map<String , dynamic> toJson() => _$CreateTreatmentModelToJson(this) ;
}
