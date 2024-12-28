



class EndPoints {

  factory EndPoints() => _instance;
  EndPoints._();

  static final EndPoints _instance = EndPoints._();

  final String BASE_URL = 'http://localhost:3000';
  final String LOGIN = "/auth/login";
  final String REGISTER = "/auth/register";
  final String REFRESHTOKEN = "/auth/refresh";

}