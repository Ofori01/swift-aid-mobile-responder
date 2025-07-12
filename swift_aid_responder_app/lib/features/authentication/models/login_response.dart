class LoginResponse {
    LoginResponse({
        required this.token,
        required this.responderName,
        required this.responderId,
        required this.responderAgency,
    });

    final String? token;
    final String? responderName;
    final String? responderId;
    final String? responderAgency;

    factory LoginResponse.fromJson(Map<String, dynamic> json){ 
        return LoginResponse(
            token: json["token"],
            responderName: json["responderName"],
            responderId: json["responder_id"],
            responderAgency: json["responder_agency"],
        );
    }

}
 