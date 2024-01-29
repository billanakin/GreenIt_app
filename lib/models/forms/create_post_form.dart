import 'dart:convert';
import 'dart:io';

import 'package:mime/mime.dart';

class CreatePostForm {
  String? title;
  String? body;
  double? latitude;
  double? longitude;
  List<String>? imagePaths;

  CreatePostForm(
      {this.title, this.body, this.latitude, this.longitude, this.imagePaths});

  Map toJson() => <String, dynamic>{
        "post": <String, dynamic>{
          "title": title,
          "body": body,
          "latitude": latitude,
          "longitude": longitude,
          "images": _processImagePaths(),
        },
      };

  List<Map<String, dynamic>> _processImagePaths() {
    var list = <Map<String, dynamic>>[];

    int rank = 0;
    imagePaths?.forEach((imagePath) {
      var map = <String, dynamic>{};
      var dataUri = _processImagePath(imagePath);
      map['rank'] = rank;
      map['data_uri'] = dataUri;
      list.add(map);
      rank += 1;
    });

    return list;
  }

  String _processImagePath(imagePath) {
    var mimeType = lookupMimeType(imagePath);
    var file = File(imagePath);
    List<int> imageBytes = file.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);

    return 'data:$mimeType;base64,$base64Image';
  }
}
