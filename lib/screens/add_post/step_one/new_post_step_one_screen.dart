import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker_mb/google_maps_place_picker.dart';
import 'package:greenit_app/apis/post_api.dart';
import 'package:greenit_app/components/app_bar/utility_app_bar.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/models/forms/create_post_form.dart';
import 'package:greenit_app/screens/add_post/step_one/components/body.dart';
import 'package:greenit_app/screens/main_navigation.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class NewPostStepOneScreen extends StatefulWidget {
  const NewPostStepOneScreen({super.key});

  @override
  State<NewPostStepOneScreen> createState() => _NewPostStepOneScreenState();
}

class _NewPostStepOneScreenState extends State<NewPostStepOneScreen> {
  final CreatePostForm _createPostForm = CreatePostForm();

  void _onTitleTextChanged(String title) {
    _createPostForm.title = title;
  }

  void _onBodyTextChanged(String body) {
    _createPostForm.body = body;
  }

  void _onImagePathsChanged(List<String> imagePaths) {
    _createPostForm.imagePaths = imagePaths;
  }

  Future<void> _createPost(BuildContext context) async {
    var apiResponse =
        await PostApi().create(_createPostForm, Current.authToken!);
    if (apiResponse.success) {
      if (!context.mounted) return;
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const MainNavigation(),
        ),
      );
      //TODO: show popup that creating post was successful
    }
  }

  bool _placedPicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: UtilityAppBar(
        leadingText: 'Cancel',
        title: 'New Post',
        actionButtonText: _placedPicked ? 'Create' : 'Next',
        actionButtonPress: () async {
          /* TODO:
            Button wont navigate if  postTitle, postMessage, postImages is not present
            If null, present a dialog box or snackbar
          */
          if (_placedPicked) {
            await _createPost(context);
          } else {
            if (!context.mounted) {}
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PlacePicker(
                  apiKey: Platform.isAndroid
                      ? "TODO: ANDROID_GOOGLE_MAPS_API_KEY"
                      : "TODO: IOS_GOOGLE_MAPS_API_KEY",
                  initialPosition:
                      const LatLng(10.308878513658154, 123.89138682763317),
                  useCurrentLocation: true,
                  onPlacePicked: (result) {
                    _createPostForm.latitude = result.geometry?.location.lat;
                    _createPostForm.longitude = result.geometry?.location.lng;
                    _placedPicked = true;
                    Navigator.of(context).pop();
                  },
                  resizeToAvoidBottomInset: false,
                ),
              ),
            );
          }
        },
      ),
      body: Column(
        children: [
          buildProgressIndicator(),
          Body(
            onTitleTextChanged: _onTitleTextChanged,
            onBodyTextChanged: _onBodyTextChanged,
            onImagePathsChanged: _onImagePathsChanged,
          ),
        ],
      ),
    );
  }

  StepProgressIndicator buildProgressIndicator() {
    return const StepProgressIndicator(
      padding: 0,
      selectedColor: kPrimaryActiveColor,
      unselectedColor: Color(0x66868686),
      currentStep: 1,
      totalSteps: 2,
      size: 4,
    );
  }
}
