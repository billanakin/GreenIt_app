import 'package:flutter/material.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/screens/viewPost/components/body.dart';

class ViewPostScreen extends StatelessWidget {
  const ViewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final postData = ModalRoute.of(context)!.settings.arguments as Post;

    return Scaffold(
      body: Body(post: postData),
    );
  }
}
