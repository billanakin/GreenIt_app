import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiUtility {
  static const Map<String, String> defaultHeaders = <String, String>{
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  static const String defaultHost = 'http://209.97.163.214';

  static Uri constructUri(path) => Uri.parse("$defaultHost$path");

  static Future<http.Response> doPost(String path,
      {String? body, String? authToken}) async {
    var client = http.Client();
    var uri = constructUri(path);
    return await client.post(uri,
        headers: _requestHeaders(authToken), body: body);
  }

  static Future<http.Response> doDelete(String path,
      {String? body, String? authToken}) async {
    var client = http.Client();
    var uri = constructUri(path);
    return await client.delete(uri,
        headers: _requestHeaders(authToken), body: body);
  }

  static Map<String, String> _requestHeaders(String? authToken) {
    var requestHeaders = Map<String, String>();
    if (authToken != null) {
      requestHeaders["Authorization"] = "Bearer $authToken";
    }
    requestHeaders.addAll(defaultHeaders);
    return requestHeaders;
  }

  static String jsonBodyString(http.Response response) =>
      const Utf8Decoder().convert(response.bodyBytes);

  static dynamic jsonBody(http.Response response) =>
      jsonDecode(jsonBodyString(response));
}
