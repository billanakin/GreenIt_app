import 'package:flutter/material.dart';
import 'package:greenit_app/components/fields/search_bar.dart';
import 'package:greenit_app/components/logo/inline_logo.dart';
import 'package:greenit_app/components/profile/profile_avatar.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/size_config.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomePageAppBar({
    super.key,
    this.height = 70.0001,
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
          height: getProportionateScreenHeight(70),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultHorizontalPadding,
            vertical: kDefaultVerticalPadding,
          ),
          decoration: BoxDecoration(
            color: const Color(0x66868686).withOpacity(0.5),
            border: const Border(
              bottom: BorderSide(
                width: 1,
                color: kPrimaryBorderColor,
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
                child: CustomSearchBar(
                  searchController: _searchController,
                  hintText: 'Search Maps',
                ),
              ),
              const HorizontalSpacing(of: 10),
              ProfileAvatar(
                profile: userProfile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
