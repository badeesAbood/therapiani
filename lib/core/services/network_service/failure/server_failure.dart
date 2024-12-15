


import 'package:my_app/core/services/network_service/failure/failure.dart';

class ServerFailure extends Failure {
  const ServerFailure({required super.message, this.statusCode}) ;
  final int? statusCode ;
}