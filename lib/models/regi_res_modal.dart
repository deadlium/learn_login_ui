import 'dart:convert';

RegiResModal regiResModal(String str) =>
    RegiResModal.fromJson(json.decode(str));

class RegiResModal {
  RegiResModal({
    required this.success,
    required this.message,
    required this.response,
  });
  late final bool success;
  late final String message;
  late final Response? response;
  
  RegiResModal.fromJson(Map<String, dynamic> json){
    success = json['success'];
    message = json['message'];
    response = json['response'] !=null ? Response.fromJson(json['response']) : null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['message'] = message;
    _data['response'] = response!.toJson();
    return _data;
  }
}

class Response {
  Response({
    required this.name,
    required this.email,
  });
  late final String name;
  late final String email;
  
  Response.fromJson(Map<String, dynamic> json){
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['email'] = email;
    return _data;
  }
}