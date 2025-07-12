import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:swift_aid_responder_app/features/authentication/models/login_response.dart';
import 'package:swift_aid_responder_app/utils/constants/api_strings.dart';

class AuthService {
  AuthService._();

  static Future<LoginResponse?> signIn(
    String badgeNumber,
    String password,
  ) async {
    http.Response response;

    response = await http.post(
      Uri.parse(ApiStrings.signInUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({"badgeNumber": badgeNumber, "password": password}),
    );

    if (response.statusCode == 200) {
      return LoginResponse.fromJson(json.decode(response.body));
    }

    return null;
  }
}
