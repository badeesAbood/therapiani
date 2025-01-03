
class NetworkException implements Exception {
  NetworkException(this.message);
  final String message;

  @override
  String toString() => message;
}

class UnauthorizedException extends NetworkException {
  UnauthorizedException() : super('Unauthorized');
}

class RefreshTokenException extends NetworkException {
  RefreshTokenException() : super('Refresh token failed');
}


class ConnectionTimeoutException extends NetworkException {
  ConnectionTimeoutException() : super('Connection timed out');
}

class SendTimeoutException extends NetworkException {
  SendTimeoutException() : super('Request timed out');
}

class ReceiveTimeoutException extends NetworkException {
  ReceiveTimeoutException() : super('Response timed out');
}

class InvalidResponseException extends NetworkException {
  final int statusCode;
  InvalidResponseException(this.statusCode)
      : super('Received invalid response with status code: $statusCode');
}

class RequestCancelledException extends NetworkException {
  RequestCancelledException() : super('Request was cancelled');
}

class UnexpectedException extends NetworkException {
  UnexpectedException(String message) : super('Unexpected error: $message');
}