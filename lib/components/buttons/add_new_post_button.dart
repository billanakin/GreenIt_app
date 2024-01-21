import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/newPost/new_post_screen.dart';
import 'package:greenit_version1/size_config.dart';

class AddNewPostButton extends StatelessWidget {
  const AddNewPostButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const NewPostScreen(),
        ),
      ),
      child: Container(
        height: getProportionateScreenHeight(75),
        width: getProportionateScreenWidth(75),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kPrimaryActiveColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 7,
              spreadRadius: 0.8,
              offset: const Offset(1.0, 3.0),
            ),
          ],
        ),
        child: const Center(
          child: Icon(Icons.post_add_outlined, color: Colors.white, size: 35),
        ),
      ),
    );
  }
}
