import 'dart:convert';

import 'package:greenit_app/models/forms/signup_form.dart';
import 'package:greenit_app/models/user.dart';
import 'package:greenit_app/apis/_api_utility.dart';
import 'package:greenit_app/apis/api_response.dart';

class SignupApi {
  Future<ApiResponse<User>> call(SignupForm signupForm) async {
    var body = jsonEncode(signupForm);
    var response = await ApiUtility.doPost("/signups", body: body);
    return ApiResponse<User>(response,
        parseDataFunc: () =>
            User.fromJson(ApiUtility.jsonBody(response)["data"]));
  }
}
