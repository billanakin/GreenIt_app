import 'dart:convert';

import 'package:greenit_app/apis/_api_utility.dart';
import 'package:greenit_app/apis/api_response.dart';

import 'package:greenit_app/models/forms/login_form.dart';
import 'package:greenit_app/models/user_with_auth_token.dart';

class SessionApi {
  Future<ApiResponse<UserWithAuthToken>> login(LoginForm loginForm) async {
    var body = jsonEncode(loginForm);
    var response = await ApiUtility.doPost("/sessions", body: body);
    return ApiResponse<UserWithAuthToken>(response, parseDataFunc: () {
      var jsonBody = ApiUtility.jsonBody(response);

      return UserWithAuthToken.fromJson(jsonBody["data"]);
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
