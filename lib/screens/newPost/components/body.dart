import 'package:flutter/material.dart';
import 'package:greenit_version1/components/cards/warning_info_card.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/data/profile_data.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String? postTitle, postMessage;

  FocusNode? _postTitleNode, _postMessageNode;

  @override
  void initState() {
    super.initState();
    _postTitleNode = FocusNode();
    _postMessageNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _postTitleNode!.dispose();
    _postMessageNode!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Profile userProfile = DemoProfilesData.userProfile;

    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
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
                buildPostTitleField(),
                const VerticalSpacing(of: 5),
                buildPostMessageField(),
                const VerticalSpacing(of: 20),
                buildInputPhotoCard(),
                const VerticalSpacing(of: 20),
                const WarningInfoCard(
                  info:
                      'To ensure your post is truthful, enhance it by including a relevant photograph.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell buildInputPhotoCard() {
    return InkWell(
      onTap: () {}, // ADD access to gallery here
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: getProportionateScreenHeight(180),
                    child: AspectRatio(
                      aspectRatio: 4 / 5,
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0x66868686)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.insert_photo_outlined,
                            color: kPrimaryBorderColor,
                            size: 75,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField buildPostMessageField() {
    return TextField(
      focusNode: _postMessageNode,
      textInputAction: TextInputAction.done,
      onEditingComplete: () => _postMessageNode!.unfocus(),
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
    );
  }

  TextField buildPostTitleField() {
    return TextField(
      focusNode: _postTitleNode,
      textInputAction: TextInputAction.done,
      onEditingComplete: () => _postTitleNode!.unfocus(),
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
    );
  }
}
