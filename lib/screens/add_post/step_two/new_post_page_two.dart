import 'package:flutter/material.dart';
import 'package:greenit_app/apis/post_api.dart';
import 'package:greenit_app/components/app_bar/utility_app_bar.dart';
import 'package:greenit_app/components/buttons/secondary_button.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/models/forms/create_post_form.dart';
import 'package:greenit_app/screens/add_post/step_two/components/body.dart';
import 'package:greenit_app/screens/main_navigation.dart';
import 'package:greenit_app/size_config.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class NewPostScreenStepTwo extends StatelessWidget {
  const NewPostScreenStepTwo({super.key, required this.createPostForm});

  final CreatePostForm createPostForm;

  void _onGeoLocationChanged(double? latitude, double? longitude) {
    createPostForm.latitude = latitude;
    createPostForm.longitude = longitude;
  }

  Future<void> _onPostButtonPressed(BuildContext context) async {
    //TODO: For now set hard code the location
    createPostForm.latitude = 9.88140512313607;
    createPostForm.longitude = 123.60863617997391;

    var apiResponse =
        await PostApi().create(createPostForm, Current.authToken!);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: UtilityAppBar(
        leadingText: 'Previous',
        title: 'New Post  ',
        actionButtonText: 'Post ',
        actionButtonPress: () async {
          await _onPostButtonPressed(context);
        }, // TODO: Insert Here code to post, after that add dialog box or snackbar for successful posting.
      ),
      body: SafeArea(
        child: Column(
          children: [
            buildProgressIndicator(),
            Body(onGeoLocationChanged: _onGeoLocationChanged),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: getProportionateScreenHeight(70),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultHorizontalPadding,
              vertical: kDefaultVerticalPadding),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                width: 1,
                color: Color(0x66868686),
              ),
            ),
          ),
          child: Center(
            child: SecondaryButton(
              text: 'Choose Location',
              press: () {}, // TODO: Insert code here to choose location
            ),
          ),
        ),
      ),
    );
  }

  StepProgressIndicator buildProgressIndicator() {
    return const StepProgressIndicator(
      padding: 0,
      selectedColor: kPrimaryActiveColor,
      unselectedColor: Color(0x66868686),
      currentStep: 2,
      totalSteps: 2,
      size: 4,
    );
  }
}
