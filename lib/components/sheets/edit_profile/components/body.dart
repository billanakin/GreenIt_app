import 'package:flutter/material.dart';
import 'package:greenit_app/components/profile/profile_avatar.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/dummy_data/profile_data.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.profile});

  final Profile profile;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String? firstName, lastName;

  FocusNode? _firstNameNode, _lastNameNode;

  @override
  void initState() {
    super.initState();
    _firstNameNode = FocusNode();
    _lastNameNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _firstNameNode!.dispose();
    _lastNameNode!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {}, // TODO: Code for insert image here
                  child: Ink(
                    height: getProportionateScreenHeight(270),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          widget.profile.profileAvatar,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.insert_photo_outlined,
                        color: Colors.white70,
                        size: 100,
                      ),
                    ),
                  ),
                ),
                const VerticalSpacing(of: 40),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultHorizontalPadding,
                  ),
                  child: TextField(
                    focusNode: _firstNameNode,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => _lastNameNode!.requestFocus(),
                    onChanged: (value) =>
                        firstName = value, // FIRST NAME VALUE HERE
                    style: kPrimaryBodyTextStyle,
                    cursorColor: kPrimaryActiveColor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Enter your new first name',
                      labelText: 'First Name',
                      contentPadding: kTextFieldPadding,
                    ),
                  ),
                ),
                const VerticalSpacing(of: 20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultHorizontalPadding,
                  ),
                  child: TextField(
                    focusNode: _lastNameNode,
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () => _lastNameNode!.unfocus(),
                    onChanged: (value) =>
                        firstName = value, // FIRST NAME VALUE HERE
                    style: kPrimaryBodyTextStyle,
                    cursorColor: kPrimaryActiveColor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Enter your new last name',
                      labelText: 'Last Name',
                      contentPadding: kTextFieldPadding,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
