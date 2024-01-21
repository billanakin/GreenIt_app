import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/utility_app_bar.dart';
import 'package:greenit_version1/components/sheets/share/components/body.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/size_config.dart';

Future quoteModalBottomSheet(BuildContext context, Post post) {
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
          title: 'Quote',
          actionButtonText: 'Post',
          actionButtonPress:
              () {}, // TOOD: post button, all fields are required
        ),
        body: Body(post: post),
      ),
    ),
  );
}
