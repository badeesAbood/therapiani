import 'package:json_annotation/json_annotation.dart';
import 'package:my_app/features/treatment/data/models/treatment_model.dart';
import 'package:my_app/features/treatment/domain/entities/treatment_list_entity.dart';

part 'treatmen_list_model.g.dart';

@JsonSerializable()
class TreatmentListModel extends TreatmentListEntity {
  TreatmentListModel({required this.treatments}) : super(treatments: treatments);

  factory TreatmentListModel.fromJson(Map<String, dynamic> json) =>
      _$TreatmentListModelFromJson(json);

  @override
  final List<TreatmentModel> treatments ;


  @override
  TreatmentListEntity fromJson(Map<String, dynamic> json) =>
      _$TreatmentListModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TreatmentListModelToJson(this);
}
