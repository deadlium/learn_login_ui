import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learnflu/config/Config.dart';
import 'package:learnflu/models/login_req_modal.dart';
import 'package:learnflu/models/login_res_modal.dart';
import 'package:learnflu/models/regi_req_modal.dart';
import 'package:learnflu/models/regi_res_modal.dart';
import 'package:learnflu/services/shared_servies.dart';

class APIServices {
  static var client = http.Client();

  static Future<bool> login(LoginReqModal modal) async {
    Map<String, String> requestHeaders = {'Content-Type': 'application/json'};

    var url = Uri.http(Config.apiUrl, Config.loginApi);

    var res = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(modal.toJson()),
    );

    if (res.statusCode == 200) {
      await SharedService.setLoginDetails(loginResJson(res.body));
      return true;
    } else {
      return false;
    }
  }

  static Future<RegiResModal> regi(RegiReqModal modal) async {
    Map<String, String> requestHeaders = {'Content-Type': 'application/json'};

    var url = Uri.http(Config.apiUrl, Config.registerApi);

    var res = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(modal.toJson()),
    );

    return regiResModal(res.body);
  }
}
