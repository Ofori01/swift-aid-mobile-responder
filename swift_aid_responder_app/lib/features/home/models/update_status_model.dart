import 'package:swift_aid_responder_app/features/home/models/user_model.dart';

class UpdateStatusModel {
  String? message;
  UserProfile? responder; // Use UserProfile here

  UpdateStatusModel({this.message, this.responder});

  UpdateStatusModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    responder = json['responder'] != null
        ? UserProfile.fromJson(json['responder'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (responder != null) {
      data['responder'] = responder!.toJson();
    }
    return data;
  }
}