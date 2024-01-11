import 'package:flutter/material.dart';
import 'package:greenit_version1/components/fields/search_bar.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:greenit_version1/size_config.dart';

class ExplorePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  ExplorePageAppBar({
    super.key,
    this.height = 70,
    required this.userProfile,
  });

  final double height;
  final Profile userProfile;

  @override
  Size get preferredSize =>
      Size(double.maxFinite, getProportionateScreenHeight(height));

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: SafeArea(
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultHorizontalPadding,
            vertical: kDefaultVerticalPadding,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: kPrimaryBorderColor,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileAvatar(
                profileAvatarImage: userProfile.profileAvatar,
              ),
              const HorizontalSpacing(of: 15),
              Expanded(
                child: CustomSearchBar(
                  searchController: _searchController,
                  hintText: 'Search Posts',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
