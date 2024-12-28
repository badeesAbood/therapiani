import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:therapiani/core/entity/base_entity.dart';
import 'package:therapiani/core/repositories/auth_repo/auth_repo.dart';
import 'package:therapiani/core/services/network_service/exception/network_exceptions.dart';
import 'package:therapiani/core/services/network_service/exception/services_exceptions.dart';
import 'package:therapiani/core/services/network_service/http_service/http_client.dart';
import 'package:therapiani/core/services/network_service/http_service/http_helper.dart';
import 'package:therapiani/core/utils/converters/json_converter.dart';
import 'package:therapiani/di.dart';

@Injectable(as: HttpClient)
class DioClient implements HttpClient {
  DioClient() {
    initHttpClient();
  }

  late final Dio _dio;

  @override
  Future<void> initHttpClient() async {
    final auth = getIt.get<AuthRepository>()..init(_dio);

    _dio = Dio(BaseOptions(
      baseUrl: 'https://api.pub.dev',
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    ));

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Do something before request is sent
        return handler.next(options); //continue
      },
      onResponse: (response, handler) {
        return handler.next(response); // continue
      },
      onError: (DioException e, handler) {
        if (e.response!.statusCode == 401) {
          auth.refreshToken();
        }
        return handler.next(e); //continue
      },
    ));
  }

  Future<T> request<T extends BaseEntity>({
    required String url,
    required Method method,
    required Map<String, String> headers,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? mockResponse,
  }) async {
    try {
      if (mockResponse != null) {
        return jsonConverter<T>(mockResponse) as T;
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

      return jsonConverter<T>(response.data! as Map<String, dynamic>) as T;
    } on DioException catch (e) {
      if (e.response!.statusCode == 401) {
        throw UnauthorizedException();
      } else {
        throw _handleDioException(e);
      }
    } on Exception catch (e) {
      throw _handleServiceException(e);
    }
  }

  Exception _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.badResponse:
        return InvalidResponseException(e.response!.statusCode!);
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

  Exception _handleServiceException(Exception e) {
    switch (e.runtimeType) {
      case TypeError:
        return JsonConversionException();
      case UnexpectedException:
        return UnexpectedException(e.toString());
      default:
        return UnexpectedException(e.toString());
    }
  }
}
