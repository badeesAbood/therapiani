import 'package:injectable/injectable.dart';
import 'package:therapiani/core/services/network_service/http_service/dio_client.dart';
import 'package:therapiani/core/services/network_service/http_service/http_helper.dart';
import 'package:therapiani/features/progress/domain/entities/progress_log_list_entity.dart';

@Injectable()
class RemoteDataSource {
  RemoteDataSource(DioClient client) : _client = client;
  final DioClient _client;

  Future<ProgressLogListEntity> fetchLogs() async {
    try {
      return await _client.request<ProgressLogListEntity>(
          url: '',
          method: Method.GET,
          headers: {},) ;
    } catch (e) {
      rethrow;
    }
  }
}
