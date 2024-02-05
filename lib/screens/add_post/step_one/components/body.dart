import 'dart:io';

import 'package:flutter/material.dart';
import 'package:greenit_app/components/cards/warning_info_card.dart';
import 'package:greenit_app/components/profile/profile_avatar.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/size_config.dart';
import 'package:image_picker/image_picker.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
    required this.onTitleTextChanged,
    required this.onBodyTextChanged,
    required this.onImagePathsChanged,
  });

  final Function onTitleTextChanged;
  final Function onBodyTextChanged;
  final Function onImagePathsChanged;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<XFile>? postImages = [];

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

  final ImagePicker imagePicker = ImagePicker();
  Future _pickImageFromGallery() async {
    final List<XFile> selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      setState(() {
        postImages!.addAll(selectedImages);
        widget.onImagePathsChanged(postImages!.map((img) => img.path).toList());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Profile userProfile = Profile.fromUser(Current.user!);

    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(
              left: kDefaultHorizontalPadding,
              right: kDefaultHorizontalPadding,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpacing(of: 20),
                buildProfileHeader(userProfile),
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
                const VerticalSpacing(of: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildProfileHeader(Profile userProfile) {
    return Row(
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
                Current.user!.name,
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
    );
  }

  InkWell buildInputPhotoCard() {
    return InkWell(
      onTap: () {
        _pickImageFromGallery();
      },
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            if (postImages!.isEmpty)
              ...List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: getProportionateScreenHeight(220),
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
            if (postImages!.isNotEmpty)
              ...List.generate(
                postImages!.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: getProportionateScreenHeight(220),
                      child: AspectRatio(
                        aspectRatio: 4 / 5,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: FileImage(
                                    File(postImages![index].path),
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: getProportionateScreenHeight(10),
                                  right: getProportionateScreenWidth(10),
                                ),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: const Color(0x33868686),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.close_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        postImages!.removeAt(index);
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
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
      onChanged: (value) =>
          widget.onBodyTextChanged(value), // POST MESSAGE HERE
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
      onChanged: (value) => widget.onTitleTextChanged(value), // POST TITLE HERE
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
