import 'package:flutter/material.dart';
import 'package:greenit_app/components/app_bar/utility_app_bar.dart';
import 'package:greenit_app/components/sheets/comment/components/body.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/size_config.dart';

Future commentModalBottomSheet(BuildContext context, Post post) {
  SizeConfig().init(context);

  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    constraints: BoxConstraints(
      maxWidth: SizeConfig.screenWidth,
      maxHeight: SizeConfig.screenHeight * 0.90,
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    builder: (context) => ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: UtilityAppBar(
          leadingText: 'Cancel',
          title: 'Comment',
          actionButtonText: 'Post',
          actionButtonPress:
              () {}, // TOOD: post button, all fields are required
        ),
        body: Body(post: post),
      ),
    ),
  );
}
