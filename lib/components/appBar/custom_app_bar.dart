import 'package:flutter/material.dart';
import 'package:greenit_version1/components/logo/inline_logo.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/main_navigation.dart';
import 'package:greenit_version1/size_config.dart';

import '../../models/profile.dart';

enum CustomAppBarType {
  defaultType,
  homePageType,
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.height = 70,
    required this.userProfile,
  }) : customAppBarType = CustomAppBarType.defaultType;

  const CustomAppBar.homePage({
    super.key,
    this.height = 70,
    required this.userProfile,
  }) : customAppBarType = CustomAppBarType.homePageType;

  final double height;
  final Profile userProfile;

  final CustomAppBarType customAppBarType;

  @override
  Size get preferredSize =>
      Size(double.maxFinite, getProportionateScreenHeight(height));

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget? customAppBarOutput;

    if (widget.customAppBarType == CustomAppBarType.defaultType) {
      customAppBarOutput = buildCustomAppBarDefaultType(
        context,
        widget.preferredSize,
        widget.height,
        widget.userProfile,
      );
    } else if (widget.customAppBarType == CustomAppBarType.homePageType) {
      customAppBarOutput = buildCustomAppBarHomePageType(
        context,
        widget.preferredSize,
        widget.height,
        widget.userProfile,
        _searchController,
      );
    }
    return customAppBarOutput!;
  }
}

PreferredSize buildCustomAppBarDefaultType(
  BuildContext context,
  Size preferredSize,
  double height,
  Profile userProfile,
) {
  return PreferredSize(
    preferredSize: preferredSize,
    child: SafeArea(
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: 10,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Color(0x66868686),
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProfileAvatar(
              profileAvatarImage: userProfile.profileAvatar,
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const MainNavigation(overrideScreenIndex: 0),
                ),
              ),
              child: const InlineLogo(width: 90),
            ),
            const SizedBox(width: 50),
            const SizedBox.square()
          ],
        ),
      ),
    ),
  );
}

PreferredSize buildCustomAppBarHomePageType(
  BuildContext context,
  Size preferredSize,
  double height,
  Profile userProfile,
  TextEditingController searchController,
) {
  return PreferredSize(
    preferredSize: preferredSize,
    child: SafeArea(
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: const Color(0x66868686).withOpacity(0.5),
          // color: Colors.green.withOpacity(0.3),
          border: const Border(
            bottom: BorderSide(
              width: 1,
              color: Color(0x66868686),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const InlineLogo(
              width: 50,
            ),
            const HorizontalSpacing(of: 10),
            Expanded(
              child: SearchBar(
                searchController: searchController,
                hintText: 'Search Maps',
              ),
            ),
            const HorizontalSpacing(of: 10),
            ProfileAvatar(
              profileAvatarImage: userProfile.profileAvatar,
            ),
          ],
        ),
      ),
    ),
  );
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.searchController,
    required this.hintText,
  });

  final TextEditingController searchController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      cursorColor: kPrimaryActiveColor,
      style: const TextStyle(
        // TODO: Optimzed TextStyle Constants
        color: Color(0xFF6C6C6C),
        fontSize: 16,
        fontFamily: 'Helvetica Neue',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
      maxLines: 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: kInputColor,
        isDense: true,
        contentPadding: const EdgeInsets.all(10),
        hintText: hintText,
        prefixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_rounded,
            size: 25,
          ),
        ),
        border: kSearchBarBorder,
        focusedBorder: kSearchBarBorder,
        enabledBorder: kSearchBarBorder,
        errorBorder: kSearchBarBorder,
        disabledBorder: kSearchBarBorder,
      ),
    );
  }
}
