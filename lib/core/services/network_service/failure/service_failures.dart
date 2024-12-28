import 'package:therapiani/core/services/network_service/failure/failure.dart';

class JsonParsingFailure extends Failure {
  const JsonParsingFailure({super.message = 'Failed to parse JSON'});
}
