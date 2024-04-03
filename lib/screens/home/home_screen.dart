import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:greenit_app/apis/post_api.dart';
import 'package:greenit_app/components/app_bar/home_page_app_bar.dart';
import 'package:greenit_app/components/buttons/add_new_post_button.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/models/post_data.dart';
import 'package:greenit_app/screens/home/components/body.dart';

import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/screens/home/loading/home_screen_loading.dart';
import 'package:greenit_app/services/determine_position_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<PostData> _loadData() async {
    PostData data = PostData();
    Position position = await getCurrentPositionService();
    var apiResponse =
        await PostApi().nearMe(position.latitude, position.longitude);
    if (apiResponse.success) {
      data.nearMe = apiResponse.data!.list;
    }

    apiResponse = await PostApi().latest();
    if (apiResponse.success) {
      data.latest = apiResponse.data!.list;
    }

    apiResponse = await PostApi().trending();
    if (apiResponse.success) {
      data.trending = apiResponse.data!.list;
    }

    apiResponse = await PostApi().recommended();
    if (apiResponse.success) {
      data.recommended = apiResponse.data!.list;
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PostData>(
      future: _loadData(),
      builder: (BuildContext context, AsyncSnapshot<PostData> snapshot) {
        if (snapshot.hasData) {
          return buildWidgets(context, snapshot.data!);

          // This is for demo purposes only
          // return ErrorState(
          //   appBar: HomePageAppBar(
          //     userProfile: Profile.fromUser(Current.user!),
          //   ),
          // );
        } else {
          return const HomeScreenLoading();
        }

        // Error Condition:
        // return ErrorState(
        //   appBar: HomePageAppBar(
        //     userProfile: Profile.fromUser(Current.user!),
        //   ),
        // );
      },
    );
  }

  PopScope buildWidgets(BuildContext context, PostData data) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: HomePageAppBar(
          userProfile: Profile.fromUser(Current.user!),
        ),
        body: Body(postData: data),
        floatingActionButton: const AddNewPostButton(),
      ),
    );
  }
}
