import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/core/services/network_service/exception/network_exceptions.dart';
import 'package:my_app/core/services/network_service/http_service/http_client.dart';
import 'package:my_app/core/services/network_service/http_service/http_helper.dart';

typedef ResponseCreator<T> = T Function(Map<String, dynamic>);

@Singleton(as: HttpClient)
class DioClient extends HttpClient {

  DioClient()
      : _dio = Dio(BaseOptions(
    baseUrl: 'https://api.pub.dev', // Replace this with dynamic fetching if necessary
    connectTimeout: const Duration(seconds: 20),
    receiveTimeout: const Duration(seconds: 20),
  ));


  final Dio _dio;

  Future<T> request<T>({
    required String url,
    required ResponseCreator<T> creator,
    required Method method,
    required Map<String, String> headers,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? mockResponse,
  }) async {
    try {
      if (mockResponse != null) {
        // Simulate response for mock scenarios
        return creator(mockResponse);
      }

      final response = await _dio.request<String>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          method: method.name,
          headers: headers,
        ),
      );

      if (response.data == null) {
        throw DioException(
          requestOptions: response.requestOptions,
          error: 'No data received from server',
        );
      }

      return creator(response.data! as Map<String, dynamic>);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  Exception _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ConnectionTimeoutException();
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
      return ConnectionTimeoutException();
      case DioExceptionType.cancel:
        return Exception('Request cancelled');
      default:
        return UnexpectedException(e.message ?? 'Unknown exception');
    }
  }
}
