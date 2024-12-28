

class ServicesException implements Exception {
  const ServicesException({required this.message,});
  final String message;
}


class JsonConversionException extends ServicesException {
  JsonConversionException() : super(message: 'Error converting json');
}
