import 'dart:convert';

import 'package:greenit_app/apis/_api_utility.dart';
import 'package:greenit_app/apis/api_response.dart';
import 'package:greenit_app/models/paged_list.dart';
import 'package:greenit_app/models/paging.dart';

import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/models/forms/create_post_form.dart';

class PostApi {
  Future<ApiResponse<PagedList<Post>>> trending() async {
    var response = await ApiUtility.doGet("/posts/trending");
    return ApiResponse<PagedList<Post>>(response,
        parseDataFunc: () =>
            _parsePagedListJson(ApiUtility.jsonBody(response)));
  }

  Future<ApiResponse<PagedList<Post>>> nearMe() async {
    var response = await ApiUtility.doGet("/posts/near_me");
    return ApiResponse<PagedList<Post>>(response,
        parseDataFunc: () =>
            _parsePagedListJson(ApiUtility.jsonBody(response)));
  }

  Future<ApiResponse<PagedList<Post>>> latest() async {
    var response = await ApiUtility.doGet("/posts/latest");
    return ApiResponse<PagedList<Post>>(response,
        parseDataFunc: () =>
            _parsePagedListJson(ApiUtility.jsonBody(response)));
  }

  Future<ApiResponse<PagedList<Post>>> recommended() async {
    var response = await ApiUtility.doGet("/posts/recommended");
    return ApiResponse<PagedList<Post>>(response,
        parseDataFunc: () =>
            _parsePagedListJson(ApiUtility.jsonBody(response)));
  }

  Future<ApiResponse<PagedList<Post>>> fromFriends() async {
    var response = await ApiUtility.doGet("/posts/from_friends");
    return ApiResponse<PagedList<Post>>(response,
        parseDataFunc: () =>
            _parsePagedListJson(ApiUtility.jsonBody(response)));
  }

  Future<ApiResponse<Post>> create(
      CreatePostForm createPostForm, String authToken) async {
    var body = jsonEncode(createPostForm);
    var response =
        await ApiUtility.doPost("/posts", body: body, authToken: authToken);
    return ApiResponse<Post>(response, parseDataFunc: () {
      var jsonBody = ApiUtility.jsonBody(response);

      return Post.fromJson(jsonBody);
    });
  }

  PagedList<Post> _parsePagedListJson(jsonBody) {
    var jsonDataList = jsonBody['data'] as List;
    var list = jsonDataList.map((jsonData) => Post.fromJson(jsonData)).toList();
    var page = Paging.fromJson(jsonBody['paging']);

    return PagedList<Post>(list: list, page: page);
  }
}
