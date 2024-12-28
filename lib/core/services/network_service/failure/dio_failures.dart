import 'package:therapiani/core/services/network_service/failure/failure.dart';

class ConnectionTimeOutFailure extends Failure {
  ConnectionTimeOutFailure() : super(message: 'Connection Time Out');
}

class ConnectionTimeoutFailure extends Failure {
  ConnectionTimeoutFailure() : super(message: 'Connection timed out');
}

class SendTimeoutFailure extends Failure {
  SendTimeoutFailure() : super(message: 'Request timed out');
}

class ReceiveTimeoutFailure extends Failure {
  ReceiveTimeoutFailure() : super(message: 'Response timed out');
}

class InvalidResponseFailure extends Failure {
  InvalidResponseFailure(int? statusCode)
      : super(
            message: 'Received invalid response with status code: $statusCode');
}

class RequestCancelledFailure extends Failure {
  RequestCancelledFailure() : super(message: 'Request was cancelled');
}

class UnexpectedFailure extends Failure {
  UnexpectedFailure(String message)
      : super(message: 'Unexpected error: $message');
}


class UnauthorizedFailure extends Failure {
  UnauthorizedFailure() : super(message: 'Unauthorized');
}

class NoUnreadMessagesFailure extends Failure {
  NoUnreadMessagesFailure() : super(message: 'No unread messages');
}