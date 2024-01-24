import 'package:flutter/material.dart';
import 'package:greenit_app/components/sheets/edit_profile/edit_profile_sheet.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/size_config.dart';

class ProfileInfoButton extends StatefulWidget {
  const ProfileInfoButton({
    super.key,
    required this.profile,
  });

  final Profile profile;

  @override
  State<ProfileInfoButton> createState() => _ProfileInfoButtonState();
}

class _ProfileInfoButtonState extends State<ProfileInfoButton>
    with TickerProviderStateMixin {
  bool isFollowing = false;

  late AnimationController modalSheetcontroller;

  @override
  initState() {
    super.initState();
    modalSheetcontroller = BottomSheet.createAnimationController(this);
    modalSheetcontroller.duration = kDefaultDuration;
    modalSheetcontroller.reverseDuration = kDefaultDuration;
    modalSheetcontroller.drive(CurveTween(curve: Curves.easeIn));
  }

  @override
  void dispose() {
    modalSheetcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          if (widget.profile.isCurrentUser)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(150),
                  height: getProportionateScreenHeight(40),
                  child: OutlinedButton(
                    onPressed: () {
                      editProfileModalBottomSheet(
                          context, widget.profile, modalSheetcontroller);
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: kPrimaryBorderColor, backgroundColor: Colors.white,
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFF868686),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Edit Profile',
                      style: kPrimaryBodyTextStyle,
                    ),
                  ),
                ),
                const HorizontalSpacing(of: 10),
                SizedBox(
                  width: getProportionateScreenWidth(150),
                  height: getProportionateScreenHeight(40),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: kPrimaryBorderColor, backgroundColor: Colors.white,
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFFC33E3E),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Logout',
                      style: kPrimaryBodyTextStyle.copyWith(
                        color: const Color(0xFFC33E3E),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          if (!widget.profile.isCurrentUser)
            SizedBox(
              width: getProportionateScreenWidth(150),
              height: getProportionateScreenHeight(40),
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    isFollowing = !isFollowing;
                  });
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: kPrimaryBorderColor, backgroundColor: Colors.white,
                  side: BorderSide(
                    width: 1,
                    color: (isFollowing)
                        ? kPrimaryActiveColor
                        : const Color(0xFF868686),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  (isFollowing) ? 'Following' : 'Follow',
                  style: kPrimaryBodyTextStyle.copyWith(
                    fontFamily: (isFollowing) ? 'Helvetica' : 'Helvetica Neue',
                    fontWeight:
                        (isFollowing) ? FontWeight.w700 : FontWeight.w300,
                    color: (isFollowing) ? kPrimaryActiveColor : Colors.black,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
