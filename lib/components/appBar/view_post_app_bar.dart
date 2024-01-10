import 'package:flutter/material.dart';
import 'package:greenit_version1/components/buttons/secondary_button.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/components/text/inline_text_divider.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/size_config.dart';

class ViewPostAppBar extends StatelessWidget implements PreferredSizeWidget {
  ViewPostAppBar({
    super.key,
    this.height = 70,
    required this.viewedPost,
  });

  final double height;
  final Post viewedPost;

  @override
  Size get preferredSize =>
      Size(double.maxFinite, getProportionateScreenHeight(height));

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: SafeArea(
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultHorizontalPadding,
            vertical: kDefaultVerticalPadding,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: kPrimaryBorderColor,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.arrow_back_rounded),
              ),
              const HorizontalSpacing(of: 15),
              ProfileAvatar.secondary(
                profileAvatarImage: viewedPost.profileImage,
                radius: 18,
              ),
              const HorizontalSpacing(of: 10),
              Flexible(
                fit: FlexFit.loose,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        viewedPost.profileName,
                        style: kPrimaryBodyTextStyle.copyWith(
                          fontSize: getProportionateScreenHeight(12),
                        ),
                      ),
                      DefaultTextStyle(
                        style: kSecondaryBodyTextStyle.copyWith(
                          fontSize: getProportionateScreenHeight(10),
                          height: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(viewedPost.time.toString()),
                            const HorizontalSpacing(of: 5),
                            const InlineTextDivider(),
                            const HorizontalSpacing(of: 5),
                            Text(viewedPost.date.toString()),
                            const HorizontalSpacing(of: 5),
                            if (viewedPost.postType ==
                                PostConstructorType.defaultPost)
                              Row(
                                children: [
                                  const InlineTextDivider(),
                                  const HorizontalSpacing(of: 5),
                                  Text(
                                      '${viewedPost.locationRange.toString()} km') // TODO: Format location Range
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const HorizontalSpacing(of: 5),
              const SecondaryButton(
                text: 'Show Map',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
