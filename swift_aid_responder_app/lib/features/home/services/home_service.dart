import 'dart:convert';
import 'package:swift_aid_responder_app/features/home/models/update_status_model.dart';
import 'package:swift_aid_responder_app/features/home/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:swift_aid_responder_app/utils/constants/api_strings.dart';
import 'package:swift_aid_responder_app/utils/storage/local_storage.dart';

class HomeService {
  HomeService._();

  static Future<UserProfile?> getUserProfile() async {
    final token = await SLocalStorage().get("token");
    final http.Response response;
    response = await http.get(
      Uri.parse(ApiStrings.getProfileUrl),
      headers: {"Authorization": 'Bearer $token'},
    );
    if (response.statusCode == 200) {
      return UserProfile.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  static Future<UpdateStatusModel> changeResponderStatus(String status) async {
    final token = await SLocalStorage().get("token");
    final http.Response response;
    response = await http.put(
      Uri.parse(ApiStrings.changeStatusUrl),
      headers: {
        "Content-Type": "application/json",
        "Authorization": 'Bearer $token',
      },
      body: jsonEncode({'status': status}),
    );

    if (response.statusCode == 200) {
      return UpdateStatusModel.fromJson(jsonDecode(response.body));
    } else {
      final error = jsonDecode(response.body);
      throw Exception(error['message'] ?? 'Failed to update status');
    }
  }
}
