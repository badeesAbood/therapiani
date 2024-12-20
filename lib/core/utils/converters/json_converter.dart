


import 'package:therapiani/core/entity/base_entity.dart';
import 'package:therapiani/core/models/inventory_list_model.dart';
import 'package:therapiani/core/models/inventory_model.dart';
import 'package:therapiani/core/models/string_response_model.dart';
import 'package:therapiani/features/authintecation/data/models/auth_model.dart';
import 'package:therapiani/features/progress/data/models/progress_log_list_model.dart';
import 'package:therapiani/features/progress/data/models/progress_log_model.dart';
import 'package:therapiani/features/treatment/data/models/treatment_model.dart';

BaseEntity jsonConverter<T extends BaseEntity>(Map<String, dynamic> json) {
  switch (T) {
    case AuthModel:
      return AuthModel.fromJson(json);
    case TreatmentModel:
      return TreatmentModel.fromJson(json);
    case ProgressLogModel:
      return ProgressLogModel.fromJson(json);
    case ProgressLogListModel:
      return ProgressLogListModel.fromJson(json);
    case InventoryListModel:
      return InventoryListModel.fromJson(json);
    case StringResponseModel:
      return StringResponseModel.fromJson(json);
    case InventoryModel:
      return InventoryModel.fromJson(json);
    default:
      return throw Exception('Model not found');
  }
}