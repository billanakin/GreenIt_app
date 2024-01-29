import 'dart:convert';

import 'package:greenit_app/apis/_api_utility.dart';
import 'package:greenit_app/apis/api_response.dart';
import 'package:greenit_app/models/current.dart';

import 'package:greenit_app/models/forms/login_form.dart';
import 'package:greenit_app/models/user.dart';

class SessionApi {
  Future<ApiResponse<User>> login(LoginForm loginForm) async {
    var body = jsonEncode(loginForm);
    var response = await ApiUtility.doPost("/sessions", body: body);
    User? user;
    if (response.statusCode == 200) {
      var jsonBody = ApiUtility.jsonBody(response);
      var authToken = jsonBody["auth_token"];
      var user = User.fromJson(jsonBody["data"]);
      await Current.refreshUserAndAuthToken(user, authToken);
    }

    return ApiResponse<User>(response, parseDataFunc: () {
      return user!;
    });
  }

  Future<ApiResponse<bool>> check(String authToken) async {
    var response = await ApiUtility.doGet("/sessions", authToken: authToken);
    if (response.statusCode == 200) {
      var jsonBody = ApiUtility.jsonBody(response);
      User user = User.fromJson(jsonBody["data"]);
      await Current.refreshUser(user);
    }

    return ApiResponse<bool>(response, parseDataFunc: () {
      return true;
    });
  }

  Future<ApiResponse<bool>> logout(String authToken) async {
    var response = await ApiUtility.doDelete("/sessions", authToken: authToken);

    return ApiResponse<bool>(response, parseDataFunc: () {
      var jsonBody = ApiUtility.jsonBody(response);
      return jsonBody["data"]["token_invalidated"] as bool;
    });
  }
}
