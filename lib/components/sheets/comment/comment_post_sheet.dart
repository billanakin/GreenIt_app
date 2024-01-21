import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/utility_app_bar.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/components/sheets/comment/components/body.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/data/profile_data.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:greenit_version1/size_config.dart';

Future commentModalBottomSheet(BuildContext context) {
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
        appBar: UtilityAppBar(
          leadingText: 'Cancel',
          title: 'Comment',
          actionButtonText: 'Post',
          actionButtonPress:
              () {}, // TOOD: post button, all fields are required
        ),
        body: const Body(),
      ),
    ),
  );
}
