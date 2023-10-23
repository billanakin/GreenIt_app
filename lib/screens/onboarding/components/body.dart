import 'package:flutter/material.dart';
import 'package:greenit_version1/components/buttons/primary_button.dart';
import 'package:greenit_version1/components/onboarding/dot_indicator.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/onboarding/components/onboarding_content.dart';
import 'package:greenit_version1/screens/signIn/sign_in_screen.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, dynamic>> onBoardingData = [
    {
      'title': '',
      'text':
          "We're on a mission to enlighten people\n and make a positive impact on our planet. ",
      'images': 'assets/Illustrations/illustrations_1.png',
    },
    {
      'title': 'Interactive Maps',
      'text':
          "Explore and pinpoint places of interest\n related to climate initiatives and events",
      'images': 'assets/Illustrations/illustrations_2.png',
    },
    {
      'title': 'Community Forums',
      'text':
          "Become part of our energetic climate community,\n where you can share, collaborate, and stay updated.",
      'images': 'assets/Illustrations/illustrations_3.png',
    },
    {
      'title': 'Community Involvement',
      'text':
          "Join forces with us to educate communities\n with limited awareness of climate change.",
      'images': 'assets/Illustrations/illustrations_4.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const VerticalSpacing(of: 50),
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: onBoardingData.length,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) => OnBoardingContent(
                  index: index,
                  title: onBoardingData[index]['title'].toString(),
                  text: onBoardingData[index]['text'].toString(),
                  image: onBoardingData[index]['images'].toString(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onBoardingData.length,
                        (index) => DotIndicator(
                          isActive: (currentPage == index),
                        ),
                      ),
                    ),
                    const Spacer(flex: 3),
                    PrimaryButton(
                      text: 'Continue',
                      press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
