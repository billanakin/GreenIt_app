import 'package:http/http.dart' as http;

import 'package:greenit_app/apis/_api_utility.dart';

class ApiResponse<T> {
  late final http.Response _response;
  Function? _parseDataFunc;

  ApiResponse(
    http.Response response, {
    Function? parseDataFunc,
  }) {
    _response = response;
    _parseDataFunc = parseDataFunc;
  }

  dynamic get validationErrors => ApiUtility.jsonBody(_response)['errors'];
  String get message => ApiUtility.jsonBody(_response)['message'];
  T? get data => _parseDataFunc?.call();

  bool get success => _response.statusCode == 200;
  bool get validationError => _response.statusCode == 422;
  bool get forbidden => _response.statusCode == 403;
  bool get unauthorized => _response.statusCode == 401;
  bool get serverError => _response.statusCode == 500;
}
