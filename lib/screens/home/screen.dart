import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/services/determine_position.dart'
    as determine_position_service;
import 'package:greenit_app/services/get_nearest_posts.dart'
    as get_nearest_posts_service;

class Screen extends StatelessWidget {
  const Screen({super.key});

  Future<List> getNearestPosts() async {
    var pos = await determine_position_service.call();
    var posts = await get_nearest_posts_service.call(
        latitude: pos.latitude, longitude: pos.longitude);
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return FutureBuilder<List>(
        future: getNearestPosts(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return buildBodyWithData(context, snapshot.data);
          } else if (snapshot.hasError) {
            return buildBodyWithError(context, snapshot.error);
          } else {
            return buildLoadingBody(context);
          }
        });
  }

  Widget buildBodyWithData(BuildContext context, List? posts) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Posts: ${posts!.length}",
          ),
        ],
      ),
    );
  }

  Widget buildBodyWithError(BuildContext context, Object? error) {
    return Center(
      child: Text(
        error!.toString(),
      ),
    );
  }

  Widget buildLoadingBody(BuildContext context) {
    return const Center(
      child: Text(
        'Loading...',
      ),
    );
  }
}
