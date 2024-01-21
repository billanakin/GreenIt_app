import 'package:flutter/material.dart';
import 'package:greenit_app/constants.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
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
      style: kPrimaryBodyTextStyle,
      maxLines: 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: kTextFieldInputColor,
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
