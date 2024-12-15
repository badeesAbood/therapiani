


import 'package:my_app/core/services/network_service/failure/failure.dart';

class NetworkFailure extends Failure {
  const NetworkFailure({required super.message, this.statusCode}) ;
  final int? statusCode ;
}