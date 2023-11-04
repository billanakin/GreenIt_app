import 'package:flutter/material.dart';
import 'package:greenit_version1/components/logo/inline_logo.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          // =============== PLACE GOOGLE MAP INTERFACE HERE===============
          Placeholder(
            color: Colors.black,
            child: Container(
              color: Colors.green.shade200,
              // color: Colors.white,
            ),
          ),
          // ==============================================================
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: 10,
            ),
            height: getProportionateScreenHeight(70),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const InlineLogo(width: 50),
                const HorizontalSpacing(of: 15),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    height: getProportionateScreenHeight(38),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6F8F6),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextField(
                      style: kSecondaryBodyTextStyle.copyWith(
                        color: const Color(0xFF6C6C6C),
                        fontSize: 15,
                        height: 0,
                      ),
                      cursorColor: kPrimaryActiveColor,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1),
                        hintText: 'Search Maps',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.zero,
                          child: Icon(Icons.search, size: 22),
                        ),
                      ),
                    ),
                  ),
                ),
                const HorizontalSpacing(of: 15),
                const ProfileAvatar(
                  profileAvatarImage: 'assets/images/profile/user_profile.jpeg',
                ),
              ],
            ),
          ),
          Positioned(
            top: 85,
            child: Padding(
              padding: const EdgeInsets.only(right: kDefaultPadding / 1.5),
              child: SizedBox(
                height: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // TODO: ADD INK WELL
                    Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.map_outlined,
                        color: kBodyTextColor,
                      ),
                    ),
                    // TODO: ADD INK WELL
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.near_me_outlined,
                        color: kBodyTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
