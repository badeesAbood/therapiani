import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:therapiani/features/progress/data/models/progress_log_model.dart';
import 'package:therapiani/features/progress/domain/entities/progress_log_list_entity.dart';

part 'progress_log_list_model.g.dart';


@JsonSerializable()
class ProgressLogListModel extends ProgressLogListEntity {
  ProgressLogListModel({required this.logs}) : super(logs: logs);

  factory ProgressLogListModel.fromJson(Map<String, dynamic> json) =>
      _$ProgressLogListModelFromJson(json);

  @override
  final List<ProgressLogModel> logs;

  @override
  ProgressLogListEntity fromJson(Map<String, dynamic> json) =>
      _$ProgressLogListModelFromJson(json) ;

  @override
  Map<String, dynamic> toJson() =>  _$ProgressLogListModelToJson(this);
}
