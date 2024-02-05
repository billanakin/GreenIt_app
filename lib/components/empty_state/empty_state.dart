import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/add_post/step_one/new_post_step_one_screen.dart';
import 'package:greenit_app/size_config.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    this.appBar,
    this.isNotification = false,
  });

  final PreferredSizeWidget? appBar;
  final bool isNotification;

  @override
  Widget build(BuildContext context) {
    if (appBar != null) {
      return Scaffold(
        appBar: appBar,
        body: buildBody(context),
      );
    } else {
      return buildBody(context);
    }
  }

  Center buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(370),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                (isNotification)
                    ? 'assets/Illustrations/states/empty-notif-state.png'
                    : 'assets/Illustrations/states/empty-post-state.png',
              ),
            ),
          ),
          Text(
            (isNotification)
                ? 'No updates at the moment'
                : 'No posts at the moment',
            style: kPrimaryHeaderTextStyle.copyWith(
              fontSize: getProportionateScreenHeight(20),
            ),
          ),
          const VerticalSpacing(of: 10),
          Text(
            (isNotification)
                ? " We're keeping an eye out and will inform\n you when there are updates."
                : 'There are no events posted so far. Kindly\n stay tuned, or feel free to make a post.',
            style: kPrimaryBodyTextStyle,
            textAlign: TextAlign.center,
          ),
          const VerticalSpacing(of: 50),
          if (!isNotification)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewPostStepOneScreen(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.post_add_outlined,
                    color: kPrimaryActiveColor,
                  ),
                  const HorizontalSpacing(of: 10),
                  Text(
                    'Create Post',
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
    );
  }
}
