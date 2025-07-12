class ApiStrings {
  ApiStrings._();

  static final String _serverUrl = 'http://10.0.2.2:8080/responders';

  static String signInUrl = '$_serverUrl/auth/login';

  static String getProfileUrl = '$_serverUrl/profile';

  static String changeStatusUrl = '$_serverUrl/update-status';
}
