import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/view_post_app_bar.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/models/profile.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final postData = ModalRoute.of(context)!.settings.arguments as Post;

    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const SizedBox.shrink(),
            expandedHeight: 70,
            floating: true,
            flexibleSpace: ViewPostAppBar(
              viewedPost: postData,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: index % 2 == 0 ? Colors.green : Colors.greenAccent,
                    height: 80,
                    alignment: Alignment.center,
                    child: Text(
                      "Item $index",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
              // 40 list items
              childCount: 40,
            ),
          ),
        ],
      ),
    );
  }
}
