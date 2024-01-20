import 'package:flutter/material.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/profile/components/body.dart';
import 'package:greenit_version1/size_config.dart';

class FlexibleSpaceContent extends StatelessWidget {
  const FlexibleSpaceContent({
    super.key,
    required this.widget,
  });

  final Body widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(400),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.profile.profileAvatar),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: const Alignment(0, 0),
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0.0318223237991333),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: getProportionateScreenHeight(140),
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultHorizontalPadding,
                  vertical: kSecondaryVerticalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Hi! I'm\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenHeight(16),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text: widget.profile.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getProportionateScreenHeight(26),
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalSpacing(of: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                ProfileAvatar(
                                  profileAvatarImage: widget
                                      .profile.followers.first.profileAvatar,
                                  radius: 10,
                                  hasBorder: true,
                                ),
                                Positioned(
                                  right: -17,
                                  child: ProfileAvatar(
                                    profileAvatarImage: widget
                                        .profile.followers[1].profileAvatar,
                                    radius: 10,
                                    hasBorder: true,
                                  ),
                                ),
                                Positioned(
                                  right: -34,
                                  child: ProfileAvatar(
                                    profileAvatarImage: widget
                                        .profile.followers[2].profileAvatar,
                                    radius: 10,
                                    hasBorder: true,
                                  ),
                                ),
                              ],
                            ),
                            const HorizontalSpacing(of: 40),
                            Text(
                              // widget.profile.numOfFollowers.toString(),
                              '1.2k Followers',
                              style: kSecondaryBodyTextStyle.copyWith(
                                color: Colors.white,
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const HorizontalSpacing(of: 20),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                ProfileAvatar(
                                  profileAvatarImage: widget
                                      .profile.following.first.profileAvatar,
                                  radius: 10,
                                  hasBorder: true,
                                ),
                                Positioned(
                                  right: -17,
                                  child: ProfileAvatar(
                                    profileAvatarImage: widget
                                        .profile.following[1].profileAvatar,
                                    radius: 10,
                                    hasBorder: true,
                                  ),
                                ),
                                Positioned(
                                  right: -34,
                                  child: ProfileAvatar(
                                    profileAvatarImage: widget
                                        .profile.following[2].profileAvatar,
                                    radius: 10,
                                    hasBorder: true,
                                  ),
                                ),
                              ],
                            ),
                            const HorizontalSpacing(of: 40),
                            Text(
                              // widget.profile.numOfFollowing.toString(),
                              '245 Following',
                              style: kSecondaryBodyTextStyle.copyWith(
                                color: Colors.white,
                                fontFamily: 'Helvetica',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
