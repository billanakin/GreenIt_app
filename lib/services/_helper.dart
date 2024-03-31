import "package:http/http.dart" as http;
import "dart:convert";

const String kBaseApiServerUrl = 'http://209.97.163.214';
final Map<String, String> kDefaultHeaders = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
};

Uri getApiServerUriFromPath(String path) {
  return Uri.parse("$kBaseApiServerUrl$path");
}

Map<String, String> getApiServerHeaders({String? authToken}) {
  var headers = kDefaultHeaders;
  if (authToken != null) {
    headers['Authorization'] = "Bearer $authToken";
  }
  return headers;
}

Future<(int statusCode, dynamic jsonBody)> callHttp({
  required String method,
  required String path,
  dynamic body,
  String? authToken,
}) async {
  var headers = getApiServerHeaders();
  var request = http.Request(method, getApiServerUriFromPath(path));
  if (body != null) {
    request.body = json.encode(body);
  }
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  dynamic jsonBody;
  try {
    jsonBody = json.decode(await response.stream.bytesToString());
  } on Exception {/* Intentionally Ignored */}
  return (response.statusCode, jsonBody);
}
