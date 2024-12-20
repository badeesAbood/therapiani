import 'package:injectable/injectable.dart';
import 'package:therapiani/core/models/string_response_model.dart';
import 'package:therapiani/core/services/network_service/http_service/dio_client.dart';
import 'package:therapiani/core/services/network_service/http_service/http_helper.dart';
import 'package:therapiani/features/treatment/data/models/treatmen_list_model.dart';
import 'package:therapiani/features/treatment/data/models/treatment_model.dart';
import 'package:therapiani/features/treatment/domain/entities/treatment_entity.dart';
import 'package:therapiani/features/treatment/domain/entities/treatment_list_entity.dart';

@Injectable()
class RemoteDataSource {
  RemoteDataSource(DioClient client) : _client = client;
  final DioClient _client;

  Future<TreatmentEntity> addTreatment(
      {required Map<String, dynamic> data}) async {
    try {
      final result = await _client.request<TreatmentEntity>(
          url: 'some/some',
          method: Method.POST,
          data: data,
          headers: {});

      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<StringResponseModel> deleteTreatment({required int id}) async {
    try {
      final result = await _client.request<StringResponseModel>(
          url: '',
          method: Method.DELETE,
          headers: {});

      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<TreatmentEntity> updateTreatment(
      {required Map<String, dynamic> data}) async {
    try {
      final result = await _client.request<TreatmentModel>(
          url: '',
          method: Method.PUT,
          headers: {});
      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<TreatmentListEntity> fetchTreatments() async {
    try {
      final result = await _client.request<TreatmentListModel>(
          url: '',
          method: Method.GET,
          headers: {});
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
