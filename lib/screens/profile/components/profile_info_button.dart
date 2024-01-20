import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:greenit_version1/size_config.dart';

class profileInfoButton extends StatefulWidget {
  const profileInfoButton({
    super.key,
    required this.profile,
  });

  final Profile profile;

  @override
  State<profileInfoButton> createState() => _profileInfoButtonState();
}

class _profileInfoButtonState extends State<profileInfoButton> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          if (widget.profile.isCurrentUser)
            SizedBox(
              width: getProportionateScreenWidth(150),
              height: getProportionateScreenHeight(40),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  primary: kPrimaryBorderColor,
                  side: const BorderSide(
                    width: 1,
                    color: const Color(0xFF868686),
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
                  backgroundColor: Colors.white,
                  primary: kPrimaryBorderColor,
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
