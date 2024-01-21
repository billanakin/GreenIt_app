import 'package:flutter/material.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/data/profile_data.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Profile userProfile = DemoProfilesData.userProfile;

    String postTitle, postMessage;

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpacing(of: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ProfileAvatar.secondary(
                    profile: userProfile,
                  ),
                  const HorizontalSpacing(of: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userProfile.name,
                          style: kPrimaryBodyTextStyle,
                        ),
                        Text(
                          'Posting your thoughts',
                          style: kSecondaryBodyTextStyle.copyWith(
                            color: kPrimaryBodyTextColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const VerticalSpacing(of: 30),
              TextField(
                onChanged: (value) => postTitle = value, // POST TITLE HERE
                style: kPrimaryBodyTextStyle.copyWith(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w600,
                ),
                cursorColor: kPrimaryActiveColor,
                maxLines: null,
                maxLength: 75,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Consider your title...',
                  hintStyle: kPrimaryBodyTextStyle.copyWith(
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const VerticalSpacing(of: 5),
              TextField(
                onChanged: (value) => postMessage = value, // POST MESSAGE HERE
                style: kPrimaryBodyTextStyle,
                cursorColor: kPrimaryActiveColor,
                maxLines: null,
                maxLength: 750,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: "Keep us in the loop on what's happening...",
                  hintStyle: kPrimaryBodyTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
