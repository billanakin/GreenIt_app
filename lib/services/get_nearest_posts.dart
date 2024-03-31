import "dart:convert";

import "package:greenit_app/models/post.dart";
import "package:http/http.dart" as http;

Future<List> call(
    {required double latitude,
    required double longitude,
    numberOfPosts = 20}) async {
  var list = <Post>[];

  var headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse('https://httpbin.org/post'));
  request.body = '''{ "longitude": $latitude, "latitude": $longitude }''';
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var body = await response.stream.bytesToString();
    var json = jsonDecode(body);
    var geoLoc = jsonDecode(json['data']);
    for (var i = 0; i < numberOfPosts; i++) {
      list.add(
          Post(latitude: geoLoc['latitude'], longitude: geoLoc['longitude']));
    }
  }

  return list;
}
