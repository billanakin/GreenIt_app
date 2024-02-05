import 'package:flutter/material.dart';
import 'package:greenit_app/apis/post_api.dart';
import 'package:greenit_app/components/app_bar/home_page_app_bar.dart';
import 'package:greenit_app/components/buttons/add_new_post_button.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/screens/home/components/body.dart';

import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/screens/home/loading/home_screen_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<List<Post>> _loadData() async {
    var apiResponse = await PostApi().latest();
    if (apiResponse.success) {
      return apiResponse.data!.list;
    } else {
      return <Post>[];
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
      future: _loadData(),
      builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
        if (snapshot.hasData) {
          return buildWidgets(context, snapshot.data!);
        } else {
          return const HomeScreenLoading();
        }
      },
    );
  }

  PopScope buildWidgets(BuildContext context, List<Post> data) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: HomePageAppBar(
          userProfile: Profile.fromUser(Current.user!),
        ),
        body: Body(posts: data),
        floatingActionButton: const AddNewPostButton(),
      ),
    );
  }
}
