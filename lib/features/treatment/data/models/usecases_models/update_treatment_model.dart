


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/features/treatment/data/models/usecases_models/usecase_requsts.dart';

part 'update_treatment_model.g.dart';
@JsonSerializable()
class UpdateTreatmentModel {

  UpdateTreatmentModel(
      { this.inventories,
         this.reminders,
         this.description,
         this.dose,
         this.frequency,
         this.startAt,
         this.endAt});

  @JsonKey(name: 'inventories')
  final List<CreateInventoryModel>? inventories;

  @JsonKey(name: 'reminders')
  final List<CreateReminderModel>? reminders;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'dose')
  final String? dose;

  @JsonKey(name: 'frequency')
  final String? frequency;

  @JsonKey(name: 'start_at')
  final DateTime? startAt;

  @JsonKey(name: 'end_at')
  final DateTime? endAt;

  Map<String , dynamic> toJson() => _$UpdateTreatmentModelToJson(this) ;
}