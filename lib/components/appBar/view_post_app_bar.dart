import 'package:flutter/material.dart';
import 'package:greenit_version1/components/buttons/secondary_button.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/components/text/inline_text_divider.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/screens/home/home_screen.dart';
import 'package:greenit_version1/screens/main_navigation.dart';
import 'package:greenit_version1/size_config.dart';

class ViewPostAppBar extends StatefulWidget implements PreferredSizeWidget {
  const ViewPostAppBar({
    super.key,
    this.height = 70,
    // required this.autoScrollToTop,
    required this.viewedPost,
  });

  static bool autoScrollStatus = false;

  final double height;
  final Post viewedPost;

  // final Function() autoScrollToTop;

  @override
  State<ViewPostAppBar> createState() => _ViewPostAppBarState();

  @override
  Size get preferredSize =>
      Size(double.maxFinite, getProportionateScreenHeight(height));
}

class _ViewPostAppBarState extends State<ViewPostAppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: SafeArea(
        child: Container(
          height: widget.height,
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
                profileAvatarImage: widget.viewedPost.profileImage,
                radius: 18,
              ),
              const HorizontalSpacing(of: 10),
              SingleChildScrollView(
                child: Flexible(
                  fit: FlexFit.loose,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.viewedPost.profileName,
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
                            Text(widget.viewedPost.time.toString()),
                            const HorizontalSpacing(of: 5),
                            const InlineTextDivider(),
                            const HorizontalSpacing(of: 5),
                            Text(widget.viewedPost.date.toString()),
                            const HorizontalSpacing(of: 5),
                            if (widget.viewedPost.postType ==
                                PostConstructorType.defaultPost)
                              Row(
                                children: [
                                  const InlineTextDivider(),
                                  const HorizontalSpacing(of: 5),
                                  Text(
                                      '${widget.viewedPost.locationRange.toString()} km') // TODO: Format location Range
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
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
