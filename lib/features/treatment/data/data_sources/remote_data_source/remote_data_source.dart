import 'package:injectable/injectable.dart';
import 'package:my_app/core/services/network_service/http_service/dio_client.dart';
import 'package:my_app/core/services/network_service/http_service/http_helper.dart';
import 'package:my_app/features/treatment/data/models/treatmen_list_model.dart';
import 'package:my_app/features/treatment/data/models/treatment_model.dart';
import 'package:my_app/features/treatment/domain/entities/treatment_entity.dart';
import 'package:my_app/features/treatment/domain/entities/treatment_list_entity.dart';

@Injectable()
class RemoteDataSource {
  RemoteDataSource(DioClient client) : _client = client;
  final DioClient _client;

  Future<TreatmentEntity> addTreatment(
      {required TreatmentEntity treatment}) async {
    try {
      final result = await _client.request<TreatmentEntity>(
          url: 'some/some',
          creator: TreatmentModel.fromJson,
          method: Method.POST,
          headers: {});

      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<String> deleteTreatment({required int id}) async {
    try {
      final result = await _client.request<String>(
          url: '',
          creator: (p0) {
            return p0['message'].toString();
          },
          method: Method.DELETE,
          headers: {});

      return result;
    } catch (e) {
      rethrow;
    }
  }

  Future<TreatmentEntity> updateTreatment(
      {required TreatmentEntity treatment}) async {
    try {
      final result = await _client.request<TreatmentModel>(
          url: '',
          creator: TreatmentModel.fromJson,
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
          creator: TreatmentListModel.fromJson,
          method: Method.GET,
          headers: {});

      return result;
    } catch (e) {
      rethrow;
    }
  }
}
