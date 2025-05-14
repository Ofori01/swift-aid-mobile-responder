import 'dart:convert';

import 'package:http/http.dart' as http;

class SHttpClient {
  SHttpClient._();
  // Todo replace with dev server
  static final String _baseUrl = 'backend hosted url/';


  // generic methods for http calls

  static Future<Map<String, dynamic>> get(String url) async {
    final response = await http.get(Uri.parse('$_baseUrl + $url'));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post(String url, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl + $url'),
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> put(String url, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl + $url'),
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
