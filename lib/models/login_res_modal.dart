import 'dart:convert';

LoginResModal loginResJson(String str) =>
    LoginResModal.fromJson(json.decode(str));

class LoginResModal {
  LoginResModal({
    required this.status,
    required this.token,
    required this.payLoad,
  });
  late final bool status;
  late final String token;
  late final PayLoad payLoad;

  LoginResModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    payLoad = PayLoad.fromJson(json['payLoad']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['token'] = token;
    _data['payLoad'] = payLoad.toJson();
    return _data;
  }
}

class PayLoad {
  PayLoad({
    required this.name,
    required this.email,
  });
  late final String name;
  late final String email;

  PayLoad.fromJson(Map<String, dynamic> json) {
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
