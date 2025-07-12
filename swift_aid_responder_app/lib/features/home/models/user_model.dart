class UserProfile {
  CurrentLocation? currentLocation;
  String? sId;
  String? responderId;
  String? email;
  String? phone;
  String? name;
  String? role;
  String? badgeNumber;
  String? agency;
  String? agencyId;
  String? status;
  int? iV;

  UserProfile(
      {this.currentLocation,
      this.sId,
      this.responderId,
      this.email,
      this.phone,
      this.name,
      this.role,
      this.badgeNumber,
      this.agency,
      this.agencyId,
      this.status,
      this.iV});

  UserProfile.fromJson(Map<String, dynamic> json) {
    currentLocation = json['current_location'] != null
        ? CurrentLocation.fromJson(json['current_location'])
        : null;
    sId = json['_id'];
    responderId = json['responder_id'];
    email = json['email'];
    phone = json['phone'];
    name = json['name'];
    role = json['role'];
    badgeNumber = json['badgeNumber'];
    agency = json['agency'];
    agencyId = json['agency_id'];
    status = json['status'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (currentLocation != null) {
      data['current_location'] = currentLocation!.toJson();
    }
    data['_id'] = sId;
    data['responder_id'] = responderId;
    data['email'] = email;
    data['phone'] = phone;
    data['name'] = name;
    data['role'] = role;
    data['badgeNumber'] = badgeNumber;
    data['agency'] = agency;
    data['agency_id'] = agencyId;
    data['status'] = status;
    data['__v'] = iV;
    return data;
  }
}

class CurrentLocation {
  String? type;
  List<double>? coordinates;

  CurrentLocation({this.type, this.coordinates});

  CurrentLocation.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['coordinates'] = coordinates;
    return data;
  }
}
