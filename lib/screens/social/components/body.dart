import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/custom_app_bar.dart';
import 'package:greenit_version1/data/post_data.dart';
import 'package:greenit_version1/models/post.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

List<Post> demoPostData = DemoPostData.demoPostListData;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 70,
            floating: true,
            flexibleSpace: CustomAppBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: demoPostData.length,
              (context, index) => PostCard(post: demoPostData[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    Widget? postCardOutput;

    if (post.postConstructorType == PostConstructorType.defaultPost) {
      postCardOutput = const Text('Default Post');
    } else if (post.postConstructorType == PostConstructorType.sharedPost) {
      postCardOutput = const Text('Shared Post');
    }

    return postCardOutput!;
  }
}
