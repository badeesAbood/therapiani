





import 'package:my_app/core/services/network_service/failure/failure.dart';

class CoreFailure extends Failure {
  const CoreFailure({required super.message, this.statusCode}) ;
  final int? statusCode ;
}