import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class ErrorState extends StatelessWidget {
  const ErrorState({
    super.key,
    this.appBar,
  });

  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: getProportionateScreenWidth(370),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  'assets/Illustrations/states/error-state.png',
                ),
              ),
            ),
            Text(
              'Something went wrong',
              style: kPrimaryHeaderTextStyle.copyWith(
                fontSize: getProportionateScreenHeight(20),
              ),
            ),
            const VerticalSpacing(of: 15),
            Text(
              'We are working to resolve the issue, please\n retry or check your internet.',
              style: kPrimaryBodyTextStyle,
              textAlign: TextAlign.center,
            ),
            const VerticalSpacing(of: 50),
            GestureDetector(
              onTap: () {}, // TODO: Refresh Page
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.refresh_rounded,
                    color: kPrimaryActiveColor,
                  ),
                  const HorizontalSpacing(of: 10),
                  Text(
                    'Refresh Page',
                    style: kPrimaryBodyTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Helvetica',
                      color: kPrimaryActiveColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
