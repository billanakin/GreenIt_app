import 'package:flutter/material.dart';
import 'package:greenit_version1/components/buttons/primary_button.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/main_navigation.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              VerticalSpacing(of: SizeConfig.screenHeight * 0.12),
              SizedBox(
                width: getProportionateScreenWidth(350),
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child:
                      Image.asset('assets/images/logo/Greenit_logo_main.png'),
                ),
              ),
              const Spacer(flex: 2),
              PrimaryButton(
                text: 'Continue',
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainNavigation(),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
